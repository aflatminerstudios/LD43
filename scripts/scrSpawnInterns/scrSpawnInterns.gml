///scrSpawnInterns()


with (objEntrance) {
  for (var i = 0; i < numToSpawn; ++i) {
		var position = [grid[xc, yc].x + xOffset, grid[xc, yc].y + yOffset];
    var in = instance_create_layer(position[0], position[1], "Instances", objIntern);

    in.xc = xc;
    in.yc = yc;
    in.parent = self.id;
    in.grid = grid; 
    in.xOffset = xOffset;
    in.yOffset = yOffset;
  }
}