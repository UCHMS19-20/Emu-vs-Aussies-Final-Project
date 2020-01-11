import java.util.*;
abstract class Tile
{
  int xCord;
  int yCord;
  PImage tImage;
  int tWidth = 130;
  int tHeight = 130;
 
  public void imagePrint()
  {
    image(tImage,xCord,yCord,tWidth,tHeight);
  }
  
  public int xCordGet()
  {
    return(xCord);
  }
  public int yCordGet()
  {
    return(yCord);
  }
}
