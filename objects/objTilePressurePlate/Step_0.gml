/// @description Insert description here
// You can write your code in this editor


// If state is different an prevState, call the correct event
if(prevDown != currDown) {
	
	if(currDown) { // pressed!
		event_perform_object(objPushSwitch, ev_mouse, ev_left_press);
	} else { // released!
		event_perform_object(objPushSwitch, ev_mouse, ev_left_release);
	}
}

prevDown = currDown;
currDown = false;