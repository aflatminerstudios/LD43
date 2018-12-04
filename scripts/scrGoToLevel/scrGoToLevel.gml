///scrGoToLevel(world to go to, level to go to)

var world = argument0;
var level = argument1;

var levelArray = [roomLevelG1L1, roomLevelG1L2, roomLevelG1L3, roomLevelG1L4, roomLevelG1L5, roomLevelG2L1, roomLevelG2L2, roomLevelG2L3, roomLevelG2L4, roomLevelG2L5, roomLevelG3L1, roomLevelG3L2, roomLevelG3L3, roomLevelG3L4, roomLevelG3L5];

var bottomScores = [3, 5, 2, 3, 4, 1, 4, 5, 3, 4, 4, 8, 7, 9, 3];

var topScores = [8, 10, 7, 8, 8, 4, 8, 9, 8, 9, 9, 15, 14, 20, 8];

if (level > 4) {  
  room_goto(roomLevelSelect);
} else {

  with (objScoreKeeper) {
    currentWorld = world;
    currentLevel = level;
    internsKilled = 0;
    internsGenerated = 0;
  
  
    midBottomScore = bottomScores[world * 5 + level];
    midTopScore = topScores[world * 5 + level]; 
  }

  room_goto(levelArray[world * 5 + level]);

}