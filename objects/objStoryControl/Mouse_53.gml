/// @description Insert description here
// You can write your code in this editor

if (currentScreen < maxScreen) {
   sprite_index = screenList[currentScreen];
   currentScreen++;
} else {
  room_goto(roomLevelSelect);
}