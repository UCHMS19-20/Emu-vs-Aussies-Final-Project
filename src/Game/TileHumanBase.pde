import java.util.*;
class TileHumanBase extends Tile
{
  public TileHumanBase(int xPos, int yPos)
  {
    xCord = xPos;
    yCord = yPos;
    tImage = loadImage("images/tiles/fort.jpg");
  }
}
