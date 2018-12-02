/// scrUpdateSwitchStatus()

/// Call inside a switch to update the switchboard with its status

if(switchID != "None") {
	var switchNumber = real(switchID);
	objSwitchboard.activatedSwitches[switchNumber] = self.isPressed;
}

