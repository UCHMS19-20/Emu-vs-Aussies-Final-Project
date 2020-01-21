import java.util.*;
class FortTile extends Tile
{
  String landscape = "oceanTile";

  public FortTile(int xPos, int yPos)
  {
    xCord = xPos;
    yCord = yPos;
    tImage = loadImage("images/tiles/fort.jpg");
  }
}
