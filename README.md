# Tienda Deportiva - Frontend

¡Bienvenido al frontend del proyecto **Tienda Deportiva**! Este proyecto permite a los usuarios navegar, buscar y comprar productos de una tienda en línea.

## Características Principales

1. **Formulario de Búsqueda**:
   - Permite a los usuarios buscar productos por nombre.
   - Incluye un **select** para elegir categorías de búsqueda.
   - La búsqueda se guarda en `localStorage` para persistencia entre recargas.

2. **Header**:
   - Muestra el título de la tienda y enlaces de navegación.
   - Incluye un menú desplegable en pantallas pequeñas para el inicio de sesión y productos.

3. **Paginación**:
   - Los productos se presentan en varias páginas.
   - Los usuarios pueden navegar a la siguiente o anterior página con botones.
   - Muestra el número total de páginas.

4. **Ordenación de Productos**:
   - Los usuarios pueden ordenar productos por precio (menor a mayor o mayor a menor).
   - El orden se aplica dinámicamente a los productos mostrados.

5. **Autenticación**:
   - Verifica si el usuario está autenticado antes de acceder a ciertas vistas.
   - Si el usuario no está autenticado, es redirigido a la página de inicio de sesión.
   - Incluye lógica para mostrar opciones diferentes en el menú según el estado de autenticación.

6. **Creación de Producto**:
   - Permite a los administradores añadir nuevos productos mediante un formulario.
   - Incluye validaciones para asegurar que todos los campos requeridos se completen correctamente.

7. **Interacción con el Backend**:
   - Realiza solicitudes a la API del backend para obtener y manipular datos de productos.
   - Maneja respuestas y errores adecuadamente, mostrando alertas al usuario según sea necesario.

## Estructura de las Vistas

- **Productos**: Muestra una lista de productos disponibles con opciones de búsqueda, ordenación y paginación.
- **Crear Producto**: Proporciona un formulario para que los administradores ingresen nuevos productos.
- **Inicio de Sesión**: Permite a los usuarios registrarse o iniciar sesión en sus cuentas.
- **Registro**: Permite a nuevos usuarios registrarse con su información.

## Requisitos

- **Node.js**: Asegúrate de tener Node.js instalado en tu máquina.
- **Docker** (opcional): Para ejecutar el frontend en un contenedor.

## Instrucciones para Ejecutar el Proyecto

1. **Clonar el Repositorio**:

   ```bash
   git clone https://github.com/cristianhar/Tienda-Deportiva.git
   cd Tienda-Deportiva
