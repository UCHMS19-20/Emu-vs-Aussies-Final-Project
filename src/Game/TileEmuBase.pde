import java.util.*;
class TileEmuBase extends Tile{
    /**
    * Class creates a emu base tile which is a type of tile
    */
    public TileEmuBase(int xPos, int yPos){
        /**
        * Constructor for human base tile. Position and image variables are set
        */
        xCord = xPos;
        yCord = yPos;
        tImage = loadImage("images/tiles/farm.jpg");
    }  
}
