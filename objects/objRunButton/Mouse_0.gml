/// @description Insert description here
// You can write your code in this editor

if (!isPressed) {
  script_execute(pressedScript);
  afm_scrPlaySoundWithRandomVarianceInRange(sndWhistle, 0.8, 1.2) 
}

isPressed = true;