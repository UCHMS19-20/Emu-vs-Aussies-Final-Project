import java.util.*;
class TileHumanBase extends Tile{
    /**
    * Class creates a human base tile which is a type of tile
    */
    public TileHumanBase(int xPos, int yPos){
        /**
        * Constructor for human base tile. Position and image variables are set
        */
        xCord = xPos;
        yCord = yPos;
        tImage = loadImage("images/tiles/fort.jpg");
    }
}
