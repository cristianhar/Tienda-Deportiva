import bcrypt from 'bcrypt';
import pool from '../config/db.js';
import dotenv from 'dotenv';
dotenv.config();

export const register = async (req, res) => {
  const { nombre, email, genero, password } = req.body;

  try {
    const [existingUser] = await pool.query('SELECT * FROM usuarios WHERE email = ?', [email]);
    if (existingUser.length > 0) {
      return res.status(400).json({ message: 'El correo ya está en uso.' });
    }

    const hashedPassword = await bcrypt.hash(password, 10);

    await pool.query(
      'INSERT INTO usuarios (nombre, email, genero, password) VALUES (?, ?, ?, ?)',
      [nombre, email, genero, hashedPassword]
    );

    res.status(201).json({ message: 'Registro exitoso' });
  } catch (err) {
    console.error(err);
    res.status(500).json({ message: 'Error en el servidor' });
  }
};

// Inicio de sesión
export const login = async (req, res) => {
  const { email, password } = req.body;

  try {
    const [user] = await pool.query('SELECT * FROM usuarios WHERE email = ?', [email]);
    if (user.length === 0) {
      return res.status(400).json({ message: 'Usuario no encontrado.' });
    }

    const validPassword = await bcrypt.compare(password, user[0].password);
    if (!validPassword) {
      return res.status(400).json({ message: 'Contraseña incorrecta.' });
    }

    // Guardar sesión del usuario
    req.session.user = {
      id: user[0].id,
      email: user[0].email,
    };

    res.status(200).json({ message: 'Inicio de sesión exitoso' });
  } catch (err) {
    console.error(err);
    res.status(500).json({ message: 'Error en el servidor' });
  }
};

// Cerrar sesión
export const logout = (req, res) => {
  req.session.destroy((err) => {
    if (err) {
      return res.status(500).json({ message: 'Error al cerrar la sesión' });
    }
    res.status(200).json({ message: 'Sesión cerrada correctamente' });
  });
};

// Verifica si el usuario está autenticado
export const checkAuth = (req, res) => {
  if (req.session.user) {
    return res.status(200).json({ authenticated: true, user: req.session.user });
  } else {
    return res.status(401).json({ authenticated: false });
  }
};

