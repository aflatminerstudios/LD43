///scrSpawnIntern()


with (objInternControl) {
  var in = instance_create_layer(x, y, "Instances", objIntern);

  in.xc = xc;
  in.yc = yc;
  in.parent = self.id;
  in.grid = grid; 
  in.xOffset = xOffset;
  in.yOffset = yOffset;
}