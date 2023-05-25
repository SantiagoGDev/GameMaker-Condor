/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
// Evento Step del objeto "obj_wall"
// Controla las colisiones con otros objetos
// Evento Step del objeto "obj_wall"
// Controla las colisiones con otros objetos
with (other) {
    // Verifica colisión con el lado izquierdo del objeto obj_wall
    if (x + other.sprite_width > obj_wall.x && x + other.sprite_width < obj_wall.x + obj_wall.sprite_width && other.x < obj_wall.x) {
        other.x = obj_wall.x - other.sprite_width; // Ajusta la posición a la izquierda del objeto obj_wall
    }
    
    // Verifica colisión con el lado derecho del objeto obj_wall
    if (x < obj_wall.x + obj_wall.sprite_width && x > obj_wall.x && other.x + other.sprite_width > obj_wall.x + obj_wall.sprite_width) {
        other.x = obj_wall.x + obj_wall.sprite_width; // Ajusta la posición a la derecha del objeto obj_wall
    }
    
    // Verifica colisión con la parte superior del objeto obj_wall
    if (y + other.sprite_height > obj_wall.y && y + other.sprite_height < obj_wall.y + obj_wall.sprite_height && other.y < obj_wall.y) {
        other.y = obj_wall.y - other.sprite_height; // Ajusta la posición encima del objeto obj_wall
    }
    
    // Verifica colisión con la parte inferior del objeto obj_wall
    if (y < obj_wall.y + obj_wall.sprite_height && y > obj_wall.y && other.y + other.sprite_height > obj_wall.y + obj_wall.sprite_height) {
        other.y = obj_wall.y + obj_wall.sprite_height; // Ajusta la posición debajo del objeto obj_wall
    }
}
