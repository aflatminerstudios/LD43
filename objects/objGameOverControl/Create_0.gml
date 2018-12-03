/// @description Insert description here
// You can write your code in this editor
var keeper = objScoreKeeper;

curScore = keeper.internsKilled;

ratingSprite = noone;
show_debug_message(curScore);
show_debug_message(keeper.midBottomScore);
if (curScore < keeper.midBottomScore) {
   ratingSprite = sprRatingHigh;
} else if (curScore > keeper.midTopScore) {
  ratingSprite = sprRatingLow;
} else {
  ratingSprite = sprRatingMedium; 
}