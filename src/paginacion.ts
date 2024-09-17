

function incrementPage() {
    var pageInput = document.getElementById("pageInput");
    if (pageInput instanceof HTMLInputElement) {
        var currentValue = parseInt(pageInput.value);
        if (currentValue < 55) {
            pageInput.value = (currentValue + 1).toString();
        }
    } else {
        console.error("El elemento no es un HTMLInputElement");
    }
}
function changePage(direction: number) {
    var pageInput = document.getElementById("pageInput");
    if (pageInput instanceof HTMLInputElement) {
        var currentValue = parseInt(pageInput.value);
        var newValue = currentValue + direction;
        if (newValue >= 1 && newValue <= 55) {
            pageInput.value = newValue.toString();
        }
    } else {
        console.error("El elemento no es un HTMLInputElement");
    }
}
