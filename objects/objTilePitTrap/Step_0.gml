/// @description Insert description here
// You can write your code in this editor

var oldIsDeactivated = self.isDeactivated;
var newIsDeactivated = false;
// switchID is multiselect, so it comes in as an array!
for(var i = 0; i < array_length_1d(switchID); i++) {
	if(switchID[i] == "None")
		continue;
	var switchNumber = real(switchID[i]);
	if(objSwitchboard.activatedSwitches[switchNumber] == true) {
		newIsDeactivated = true;
	}
}

if(oldIsDeactivated != newIsDeactivated) {
  // Update the bridge object?
	// Micha TODO
	// Make sure Interns can't die? --  Micha TODO
}

self.isDeactivated = newIsDeactivated;