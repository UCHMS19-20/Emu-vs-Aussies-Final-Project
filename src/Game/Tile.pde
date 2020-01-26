import java.util.*;
abstract class Tile
{
    /**
    * Defines variables and functions that all classes 
    * which extend this will use.
    */
    int xCord;
    int yCord;
    PImage tImage;
    int tWidth = 100;
    int tHeight = 100;
    
    
    public void imagePrint(){
        /**
        * image print function
        */
        image(tImage,xCord,yCord,tWidth,tHeight);
    }
}
