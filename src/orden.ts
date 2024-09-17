let mostrardrop = false;

function menu() {
    mostrardrop = !mostrardrop;
    const dropdown = document.getElementById("dropdown");
    if (dropdown) {
        dropdown.classList.toggle("hidden", !mostrardrop);
    }
}

function ascendente() {
    console.log("Ordenar de menor a mayor precio");
    ordenarProductos('asc'); // Llamar a la función para ordenar de menor a mayor
    menu(); // Cerrar el menú después de seleccionar
}

function descendente() {
    console.log("Ordenar de mayor a menor precio");
    ordenarProductos('desc'); // Llamar a la función para ordenar de mayor a menor
    menu(); // Cerrar el menú después de seleccionar
}

// Asegúrate de que esta función esté disponible en la página para que pueda ordenar los productos
declare function ordenarProductos(orden: string): void;
