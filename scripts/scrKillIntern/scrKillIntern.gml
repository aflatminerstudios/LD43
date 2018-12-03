///scrKillIntern(intern to kill)

var intern = argument0;

with (objScoreKeeper) {
   internsKilled++;
}

with (intern) {
	instance_create_layer(x, y, "Ghosts", objInternGhost);
  instance_destroy();
}

