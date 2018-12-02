///scrKillIntern(intern to kill)

var intern = argument0;

with (intern) {
	instance_create_depth(x, y, depth, objInternGhost);
  instance_destroy();
}

