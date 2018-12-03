/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(ord("I"))) {
  //room_goto(roomInstructions); // TODO: Remove or change to instructions screen
} else if (keyboard_check_pressed(vk_left)) {
  scrShowCredits(); 
} else if (keyboard_check_pressed(vk_right)) {
  scrHideCredits(); 
} else if (keyboard_check_pressed(vk_anykey)) {
  scrGoToMainScreen();
}

if(self.viewTarget != self.oldViewTarget) {
	self.oldViewTarget = self.viewTarget;
	self.isScrolling = true;
	self.scrollTime = self.durationOfScroll;
}

if(self.isScrolling) {
	// Move the camera
	if(self.viewTarget == "credits") {
		var percentFromLeft = afm_scrCurveCubicInOut(0, 1, self.scrollTime/self.durationOfScroll);
		scrSetTitleScrollPosition(percentFromLeft);
	} else if(self.viewTarget == "title") {
		var percentFromLeft = afm_scrCurveCubicInOut(1, 0, self.scrollTime/self.durationOfScroll);
		scrSetTitleScrollPosition(percentFromLeft);
	}

	// Adjust the parallax


	// Update the scroll time
	if(self.scrollTime <= 0)
		self.isScrolling = false;
	else
		self.scrollTime--;

}


if (keyboard_check_pressed(ord("1"))) {
  scrGoToLevel(0); 
}
if (keyboard_check_pressed(ord("2"))) {
  scrGoToLevel(1); 
}
if (keyboard_check_pressed(ord("3"))) {
  scrGoToLevel(2); 
}
if (keyboard_check_pressed(ord("4"))) {
  scrGoToLevel(3); 
}
if (keyboard_check_pressed(ord("5"))) {
  scrGoToLevel(4); 
}
if (keyboard_check_pressed(ord("6"))) {
  scrGoToLevel(5); 
}
if (keyboard_check_pressed(ord("7"))) {
  scrGoToLevel(6); 
}
if (keyboard_check_pressed(ord("8"))) {
  scrGoToLevel(7); 
}
if (keyboard_check_pressed(ord("9"))) {
  scrGoToLevel(8); 
}
if (keyboard_check_pressed(ord("0"))) {
  scrGoToLevel(9); 
}
