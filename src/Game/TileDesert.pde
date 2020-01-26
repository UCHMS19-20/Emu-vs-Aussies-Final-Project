import java.util.*;
class TileDesert extends Tile
{
  public TileDesert(int xPos, int yPos)
  {
    xCord = xPos;
    yCord = yPos;
    tImage = loadImage("images/tiles/desert.jpg");
  }
}
