import java.util.*;
class TileDesert extends Tile{
    /**
    * Class creates a desert tile which is a type of tile
    */
    public TileDesert(int xPos, int yPos){
        /**
        * Constructor for desert tile. Position and image variables are set
        */
        xCord = xPos;
        yCord = yPos;
        tImage = loadImage("images/tiles/desert.jpg"); // loads image
    }
}
