///scrGoToLevel(world to go to, level to go to)

var level = argument0;
var world = 0;
var levelArray = [roomJohnTest, roomLevelG1L1, roomLevelG1L2, roomLevelG1L3, roomLevelG1L4, roomLevelG1L5, roomLevelG2L1, roomLevelG2L2, roomLevelG2L3, roomLevelG2L4, roomLevelG2L5];

var bottomScores = [3, 5, 2, 3, 4, 1, 3, 2, 3, 4];

var topScores = [8, 10, 7, 8, 8, 3, 8, 7, 8, 9];

if (level >= array_length_1d(levelArray)) {
  level = 0; 
}


with (objScoreKeeper) {
  currentLevel = level;
  internsKilled = 0;
  internsGenerated = 0;
  
  midBottomScore = bottomScores[world * 5 + level];
  midTopScore = topScores[world * 5 + level]; 
}

room_goto(levelArray[world * 5 + level]);