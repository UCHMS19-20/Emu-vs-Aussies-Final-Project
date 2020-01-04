import java.util.*;
class MountainTile extends Tile
{
  String landscape = "mountainTile";
 
  public MountainTile(int xPos, int yPos)
  {
    xCord = xPos;
    yCord = yPos;
    tImage = loadImage("images/mountain.jpg");
  }
  
  public void imagePrint()
  {
    image(tImage,xCord,yCord,tWidth,tHeight);
  }
  
}
