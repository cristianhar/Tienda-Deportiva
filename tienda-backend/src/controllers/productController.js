import dotenv from 'dotenv';
import pool from '../config/db.js';
dotenv.config();


// Obtener todos los productos
export const getProducts = async (req, res) => {
  try {
    const [products] = await pool.query('SELECT * FROM productos');
    res.status(200).json(products);
  } catch (error) {
    console.error('Error al obtener productos:', error);
    res.status(500).json({ message: 'Error en el servidor' });
  }
};

// Crear producto
export const createProduct = async (req, res) => {
  const { nombre, descripcion, precio, precioOriginal, descuento, imagen } = req.body;

  // Asegúrate de que los valores numéricos sean correctos
  const precioDecimal = parseFloat(precio);
  const precioOriginalDecimal = precioOriginal ? parseFloat(precioOriginal) : null;

  // Definir el valor máximo permitido para precioOriginal
  const precioMaximo = 99999999.99;

  // Validar precioOriginal
  if (precioOriginalDecimal && precioOriginalDecimal > precioMaximo) {
    return res.status(400).json({ message: 'El precio original es demasiado alto.' });
  }

  try {
    const [result] = await pool.query(
      'INSERT INTO productos (nombre, descripcion, precio, precioOriginal, descuento, imagen) VALUES (?, ?, ?, ?, ?, ?)',
      [nombre, descripcion, precioDecimal, precioOriginalDecimal, descuento, imagen]
    );

    res.status(201).json({ message: 'Producto creado exitosamente', id: result.insertId });
  } catch (error) {
    console.error('Error al crear el producto:', error);
    res.status(500).json({ message: 'Error en el servidor' });
  }
};

// Editar producto
export const updateProduct = async (req, res) => {
  const { id } = req.params;
  const { nombre, descripcion, precio, precioOriginal, imagen } = req.body;

  try {
    const [result] = await pool.query(
      'UPDATE productos SET nombre = ?, descripcion = ?, precio = ?, precioOriginal = ?, imagen = ? WHERE id = ?',
      [nombre, descripcion, precio, precioOriginal, imagen, id]
    );
    res.status(200).json({ message: 'Producto actualizado exitosamente' });
  } catch (error) {
    console.error('Error al actualizar producto:', error);
    res.status(500).json({ message: 'Error en el servidor' });
  }
};

// Eliminar producto
export const deleteProduct = async (req, res) => {
  const { id } = req.params;

  try {
    await pool.query('DELETE FROM productos WHERE id = ?', [id]);
    res.status(200).json({ message: 'Producto eliminado exitosamente' });
  } catch (error) {
    console.error('Error al eliminar producto:', error);
    res.status(500).json({ message: 'Error en el servidor' });
  }
};
export const getProductById = async (req, res) => {
  const { id } = req.params;


  try {
    const [product] = await pool.query('SELECT * FROM productos WHERE id = ?', [id]);

    if (product.length === 0) {
      return res.status(404).json({ message: 'Producto no encontrado' });
    }
    res.status(200).json(product[0]);
  } catch (error) {
    console.error('Error al obtener el producto:', error);
    res.status(500).json({ message: 'Error en el servidor' });
  }
};
