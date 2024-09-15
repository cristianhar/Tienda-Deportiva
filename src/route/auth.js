import { Router } from 'express';
import { register, login, logout} from '../controllers/authController.js';

const router = Router();

// Ruta para el registro de usuarios
router.post('/register', register);

// Ruta para el login de usuarios
router.post('/login', login);

router.post('/logout', (req, res) => {
  req.session.destroy((err) => {
    if (err) {
      return res.status(500).json({ message: 'Error al cerrar la sesión' });
    }
    res.clearCookie('connect.sid'); // Limpiar la cookie de sesión
    res.status(200).json({ message: 'Sesión cerrada correctamente' });
  });
});


router.get('/check-auth', (req, res) => {
  if (req.session.user) {
    res.json({ authenticated: true });
  } else {
    res.json({ authenticated: false });
  }
});



export default router;
