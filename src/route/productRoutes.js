import { Router } from 'express';
import { getProducts, createProduct, updateProduct, deleteProduct, getProductById } from '../controllers/productController.js';

const router = Router();

router.get('/productos', getProducts); // Obtener productos'
router.get('/productos/:id', getProductById); // Obtener producto por ID
router.post('/productos', createProduct); // Crear producto
router.put('/productos/:id', updateProduct); // Editar producto
router.delete('/productos/:id', deleteProduct); // Eliminar producto

export default router;
