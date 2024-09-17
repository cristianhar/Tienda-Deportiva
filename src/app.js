import express from 'express';
import dotenv from 'dotenv';
import cors from 'cors';
import session from 'express-session';
import mysql from 'mysql2/promise'; // Asegúrate de tener esto
import authRoutes from './route/auth.js';
import productRoutes from './route/productRoutes.js'; // Importar rutas de productos
import { isAuthenticated } from './middleware/authMiddleware.js'; // Middleware de autenticación

dotenv.config();

const app = express();
const PORT = process.env.PORT || 3000;

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

// Función para iniciar la conexión a la base de datos
async function iniciarServer() {
    let conn;
    let intentos = 5;

    while (intentos) {
        try {
            conn = await mysql.createConnection({
                host: process.env.DB_HOST,
                user: process.env.DB_USER,
                password: process.env.DB_PASSWORD,
                database: process.env.DB_NAME
            });
            console.log('Conexión a MySQL exitosa');
            break; // Conexión exitosa, salir del bucle
        } catch (error) {
            console.error('Error conectando a MySQL, reintentando...', error);
            intentos -= 1;
            await new Promise(resolve => setTimeout(resolve, 10000)); // Espera 10 segundos

        }
    }

    if (!conn) {
        console.error('No se pudo conectar a MySQL después de varios intentos.');
        process.exit(1); // Terminar el proceso con un código de error
    }

    // Iniciar el servidor Express
    app.listen(PORT, () => {
        console.log(`Servidor corriendo en http://localhost:${PORT}`);
        console.log('Servidor de Cristianhar iniciado correctamente');
        console.log('Aprendiz de Desarrollo de Software');
        console.log('Tienda de Cristianhar');
    });
}

// Llama a la función para iniciar el servidor
iniciarServer();
