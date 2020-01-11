import java.util.*;
class OceanTile extends Tile
{
  String landscape = "oceanTile";

  public OceanTile(int xPos, int yPos)
  {
    xCord = xPos;
    yCord = yPos;
    tImage = loadImage("images/tiles/ocean.jpg");
  }
}
