import java.util.*;
abstract class Tile
{
  int xCord;
  int yCord;
  PImage tImage;
  int tWidth = 110;
  int tHeight = 110;
 
  public void imagePrint()
  {
    image(tImage,xCord,yCord,tWidth,tHeight);
  }
}
