/// @description Bridge when deactivated, override in children for other behavior

//prevIsActivated = self.isActivated;
var newIsActivated = isNormallyActivated;
// switchID is multiselect, so it comes in as an array!
for(var i = 0; i < array_length_1d(switchID); i++) {
	if(switchID[i] == "None")
		continue;
	var switchNumber = real(switchID[i]);
	if(objSwitchboard.activatedSwitches[switchNumber] == true) {
		newIsActivated = !isNormallyActivated;
	}
}

if(prevIsActivated != newIsActivated) {
	if(!newIsActivated) {
		myBridge = instance_create_layer(x, y, "Bridges", self.bridgeType);
	} else {
		if(myBridge != noone) {
			instance_create_layer(x, y, "Bridges", self.bridgeTypeDown);
			instance_destroy(myBridge);
			myBridge = noone;
		}
	}
}

self.isActivated = newIsActivated;

if(self.isActivated)
	currentKillChance = killChance;
else
	currentKillChance = 0;
	
prevIsActivated = self.isActivated