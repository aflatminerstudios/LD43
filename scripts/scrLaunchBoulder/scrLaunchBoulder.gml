///scrLaunchBoulder(boulderStand, theBoulder)

var boulderStand = argument0;
var theBoulder = argument1;

with (theBoulder) {  
  rolling = true;
  dir = boulderStand.dir;
  depth = layer_get_depth("Bridges") - 2;
}