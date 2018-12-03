///scrKillIntern(intern to kill)

var intern = argument0;

var sound = choose(sndDeath1, sndDeath2, sndDeath3);

audio_play_sound(sound, 1, false);

//afm_scrPlaySoundWithRandomVarianceInRange(sound, 1.0, 1.0);

with (objScoreKeeper) {
   internsKilled++;
}

with (intern) {
	instance_create_layer(x, y, "Ghosts", objInternGhost);
  instance_destroy();
}

