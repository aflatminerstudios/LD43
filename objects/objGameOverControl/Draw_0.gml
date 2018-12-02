/// @description Insert description here
// You can write your code in this editor


draw_self();

draw_set_color(c_black);


draw_text(x, y, "Nice Going!");
draw_text(x, y + 50, "Interns Sacrificed: ");
draw_text(x + 100, y + 50, string(curScore));

draw_sprite(ratingSprite, 0, x, y);