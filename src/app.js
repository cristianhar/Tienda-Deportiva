import express from 'express';
import dotenv from 'dotenv';
import cors from 'cors';
import session from 'express-session';
import authRoutes from './route/auth.js';
import productRoutes from './route/productRoutes.js'; // Importar rutas de productos
import { isAuthenticated } from './middleware/authMiddleware.js'; // Middleware de autenticación

dotenv.config();

const app = express();

// Configuración de CORS
app.use(
  cors({
    origin: 'http://localhost:4321', // Cambia esto al puerto de tu frontend
    credentials: true, // Permitir que las cookies se envíen con las solicitudes
  })
);
app.use(express.json()); // Permitir que el backend reciba JSON
// Configuración de express-session
app.use(
  session({
    secret: process.env.SESSION_SECRET || 'secret-key',
    resave: false,
    saveUninitialized: true,
    cookie: {
      maxAge: 30 * 60 * 1000, // 30 minutos
    },
  })
);

// Rutas de autenticación
app.use('/api', authRoutes);

// Rutas de productos protegidas por autenticación
app.use('/api', isAuthenticated, productRoutes); // Agregar rutas de productos aquí

// Ruta de prueba
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Servidor corriendo en http://localhost:${PORT}`);
});
console.log('Servidor de Cristianhar iniciado correctamente');
console.log('Servidor de Cristianhar iniciado correctamente');
console.log('Servidor de Cristianhar iniciado correctamente');
console.log('Servidor de Cristianhar iniciado correctamente');
console.log('Servidor de Cristianhar iniciado correctamente');
console.log('Aprendiz de Desarrollo de Software');
console.log('Tienda de Cristianhar');