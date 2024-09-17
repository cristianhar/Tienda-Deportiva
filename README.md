# Tienda Deportiva - Backend

¡Bienvenido al backend del proyecto **Tienda Deportiva**! Este servicio está construido utilizando **Node.js**, **Express**, **MySQL**, **dotenv**, **bcrypt**, y **CORS**.

## Descripción

Este backend maneja la autenticación de usuarios y la gestión de productos en la tienda deportiva. Utiliza una base de datos MySQL para almacenar la información de los usuarios y los productos.

## Estructura de la Base de Datos

El backend se conecta a una base de datos MySQL que incluye las siguientes tablas:

- **usuarios**
  - `id`: Identificador único (auto-incremental)
  - `nombre`: Nombre del usuario
  - `email`: Correo electrónico (único)
  - `genero`: Género del usuario
  - `password`: Contraseña (almacenada como hash)

- **productos**
  - `id`: Identificador único (auto-incremental)
  - `nombre`: Nombre del producto
  - `descripcion`: Descripción del producto
  - `precio`: Precio del producto
  - `precioOriginal`: Precio original del producto (opcional)
  - `descuento`: Descuento aplicado (opcional)
  - `imagen`: URL de la imagen del producto

### Creación de la Base de Datos

Para crear la base de datos y las tablas necesarias, se utiliza un archivo SQL que se ejecuta automáticamente al iniciar el contenedor MySQL.

## Funciones del Backend

### Autenticación de Usuarios

- **Registro de Usuarios**: Permite a nuevos usuarios registrarse en el sistema. Se valida que el correo electrónico no esté en uso y la contraseña se almacena de manera segura usando hashing con bcrypt.

- **Inicio de Sesión**: Permite a los usuarios existentes iniciar sesión. Se valida la contraseña y se guarda la sesión del usuario si las credenciales son correctas.

- **Cerrar Sesión**: Elimina la sesión del usuario, asegurando que no pueda acceder a rutas protegidas después de cerrar sesión.

- **Verificación de Autenticación**: Permite verificar si un usuario está autenticado, lo que es esencial para proteger rutas que requieren acceso restringido.

### Gestión de Productos

- **Obtener Productos**: Permite obtener una lista de todos los productos disponibles en la tienda. Ideal para mostrar en la interfaz de usuario.

- **Crear Producto**: Permite a los administradores agregar nuevos productos a la tienda. Se asegura de que los precios sean válidos y que se manejen correctamente las imágenes.

- **Actualizar Producto**: Permite modificar la información de un producto existente. Esto incluye cambios en el nombre, descripción, precio y más.

- **Eliminar Producto**: Permite eliminar un producto de la base de datos. Útil para mantener el catálogo de productos actualizado.

### Estructura del Código

- **Controladores**: La lógica de cada función está organizada en controladores separados para la autenticación (`authController.js`) y para la gestión de productos (`productController.js`).

- **Rutas**: Las rutas están definidas en archivos específicos (`auth.js` y `productRoutes.js`) y se organizan de manera que sea fácil navegar y mantener el código.

## Requisitos

- **Node.js**: Asegúrate de tener Node.js instalado en tu máquina.
- **MySQL**: Debes tener un servidor MySQL en funcionamiento.
- **Docker** (opcional): Para ejecutar el backend en un contenedor.

## Configuración

### Variables de Entorno

Crea un archivo `.env` en la raíz del proyecto y añade tus credenciales de la base de datos:
    
     ```plaintext
      DB_ROOT_PASSWORD=12345
      DB_NAME=miapp
      DB_USER=cristianhar
      DB_PASSWORD=miclave

### Ejecuta en tu consola
   ```
  git clone https://github.com/cristianhar/Tienda-Deportiva.git
  cd Tienda-Deportiva
  docker-compose up --build



