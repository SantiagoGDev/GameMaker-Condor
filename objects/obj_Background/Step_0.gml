/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
background_x -= background_speed;

// si el fondo se sale de la pantalla, reposiciónalo
if (background_x < -background_width)
{
    background_x += background_width;
}