///afm_scrDiceNormalizedIRandom(maxValue, numberOfDice)
// Note: irandom(n) goes from 0 to n, inclusive
//    so if you try to roll a 2d6-normalized set, you actually want to pass in 5 and 2 instead of 6 and 2

var maxValue = argument0;
var numberOfDice = argument1;

if(numberOfDice < 1)
	return 0;

var sum = 0;
for(var i = 0; i < numberOfDice; i++)
	sum += irandom(maxValue);
	
return floor(sum/numberOfDice);