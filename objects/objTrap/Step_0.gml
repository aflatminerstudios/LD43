/// @description Bridge when deactivated, override in children for other behavior

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
	if(newIsDeactivated) {
		myBridge = instance_create_layer(x, y, "Bridges", self.bridgeType);
	} else {
		if(myBridge != noone) {
			instance_create_layer(x, y, "Bridges", self.bridgeTypeDown);
			instance_destroy(myBridge);
			myBridge = noone;
		}
	}
}

self.isDeactivated = newIsDeactivated;

if(self.isDeactivated)
	currentKillChance = 0;
else
	currentKillChance = killChance;