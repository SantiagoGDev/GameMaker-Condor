// Evento Create del objeto "player"
// Establece la velocidad y la gravedad
// Evento Create del objeto "obj_character"
vsp = 0; // Inicializa la variable "vsp" con un valor predeterminado de 0


speed = 3; // Velocidad horizontal
jump_speed = 10; // Velocidad vertical para saltar
gravity = 0.8; // Gravedad aplicada al objeto
is_jumping = false; // Bandera para verificar si el jugador está saltando

// Evento Step del objeto "player"
// Controla el movimiento y la detección de teclas
if (keyboard_check(vk_left)) {
    x -= speed; // Mover a la izquierda
} else if (keyboard_check(vk_right)) {
    x += speed; // Mover a la derecha
}

// Controla el salto
if (keyboard_check_pressed(vk_space) && !is_jumping) {
    is_jumping = true; // El jugador está saltando
    vsp = -jump_speed; // Aplica la velocidad vertical para saltar
}

// Aplica la gravedad
vsp += gravity;
y += vsp;

// Verifica colisiones con el suelo
if (place_meeting(x, y + 1, obj_wall)) {
    is_jumping = false; // El jugador ya no está saltando
    vsp = 0; // Detiene la velocidad vertical
    y = y div 32 * 32; // Ajusta la posición del jugador al suelo (suponiendo una cuadrícula de 32x32)
}

// Evento Draw del objeto "player"
// Dibuja el objeto en la posición actual
draw_self();
