/// @arg room
/// @arg fade-color
/// @arg fade-speed
/// @arg room-data
function room_fade(argument0, argument1, argument2, argument3) {
    fade = instance_create_layer(x, y, "Instances_1", roomFade, {target: argument0, fade_color: argument1});
}
