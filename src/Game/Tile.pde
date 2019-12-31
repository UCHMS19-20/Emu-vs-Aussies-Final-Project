import java.util.*;
abstract class Tile
{
  int xCord;
  int yCord;
  PImage tImage;
  int tWidth = 130;
  int tHeight = 130;
 
  public void tempPrint()
  {
    image(tImage,xCord,yCord);
  }
}
