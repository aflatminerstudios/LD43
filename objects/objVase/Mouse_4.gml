/// @description Break vase

afm_scrPlaySoundWithRandomVarianceInRange(sndVaseBreak, 1.0, 1.0);

if(sprite_index == sprTileVase) {
	sprite_index = sprTileVaseBroken;	
}

