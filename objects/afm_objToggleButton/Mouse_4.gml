/// @description Insert description here
// You can write your code in this editor

/// Start pressed state and run pressedScript

if(!isPressed) {
  isPressed = true;
  
  if(pressedSound != noone) {
    if(useSoundVariance)
      afm_scrPlaySoundWithRandomVarianceInRange(pressedSound, minSoundVariance, maxSoundVariance);
    else
      afm_scrPlaySoundWithVariance(pressedSound, 1.0);
  }
  script_execute(pressedScript);
} else {
	isPressed = false;
  
  if(unpressedSound != noone) {
    if(useSoundVariance)
      afm_scrPlaySoundWithRandomVarianceInRange(unpressedSound, minSoundVariance, maxSoundVariance);
    else
      afm_scrPlaySoundWithVariance(unpressedSound, 1.0);
  }
  script_execute(unpressedScript);
}