/// @description thingie mc doodely
// You cant write your co




draw_set_alpha(image_alpha);

if(!transitioned) {
    image_alpha += fade_speed;
    if(image_alpha) {
        room_goto_next();
        transitioned = true;
    }
} else {
    image_alpha -= fade_speed;
    if(image_alpha == 0) {
        instance_destroy();
    }
}

draw_rectangle(0, 0, view_wport * 2, view_hport * 2, false);
draw_set_alpha(1);