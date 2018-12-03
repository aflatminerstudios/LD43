/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

dir = 0;
hasLaunched = false;

boulder = instance_create_depth(x, y, depth + 1, objBoulder);

switch (dir) {
  case 0:
    boulder.x += 20;
  case 180:
    boulder.x -= 20;
  case 90:
    boulder.y -= 20;
  case 270:
    boulder.y += 20;
}

boulder.stand = self.id;