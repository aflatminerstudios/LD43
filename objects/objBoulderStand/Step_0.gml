/// @description Insert description here
// You can write your code in this editor


for(var i = 0; i < array_length_1d(switchID); i++) {
	if(switchID[i] == "None")
		continue;
	var switchNumber = real(switchID[i]);
	if(objSwitchboard.activatedSwitches[switchNumber] == true && !hasLaunched) {
		scrLaunchBoulder(self.id, boulder);
	}
}