/// @description Insert description here
// You can write your code in this editor

alarm[0] = spawnTime * room_speed;

var in = instance_create_layer(x, y, "Instances", objIntern);

in.xc = xc;
in.yc = yc;
in.parent = self.id;
in.grid = grid;