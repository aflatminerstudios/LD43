/// @description Insert description here
// You can write your code in this editor


draw_self();

draw_set_color(c_black);

draw_set_halign(fa_center);

draw_set_font(fontGameOverLarge);
draw_text(400, 150, "Nice Going, Interns!");

draw_set_font(fontGameOverMedium);

draw_text(400, 225, "Interns Sacrificed:    " + string(curScore));


draw_sprite(ratingSprite, 0, 400, 325);