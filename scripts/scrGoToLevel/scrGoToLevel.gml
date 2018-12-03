///scrGoToLevel(level to go to)

var level = argument0;

var levelArray = [roomLevelG1L1, roomLevelG1L2, roomLevelG1L3, roomLevelG1L4];
var bottomScores = [3, 5, 2, 3];
var topScores = [8, 10, 7, 8];

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