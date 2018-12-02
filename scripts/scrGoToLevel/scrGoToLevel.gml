///scrGoToLevel(level to go to)

var level = argument0;

var levelArray = [roomLevel1];
var bottomScores = [10];
var topScores = [40];

if (level >= array_length_1d(levelArray)) {
  level = 0; 
}


with (objScoreKeeper) {
  currentLevel = level;
  internsKilled = 0;
  internsGenerated = 0;
  
  midBottomScore = bottomScores[level];
  midTopScore = topScores[level]; 
}

room_goto(levelArray[level]);