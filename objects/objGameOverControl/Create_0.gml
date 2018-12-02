/// @description Insert description here
// You can write your code in this editor
var keeper = objScoreKeeper;

curScore = keeper.internsKilled;

ratingSprite = noone;

if (curScore< keeper.midBottomScore) {
   ratingSprite = sprRatingLow;
} else if (curScore > keeper.midTopScore) {
  ratingSprite = sprRatingHigh;
} else {
  ratingSprite = sprRatingMedium; 
}