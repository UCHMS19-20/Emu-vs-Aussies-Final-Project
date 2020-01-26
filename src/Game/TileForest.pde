import java.util.*;
class TileForest extends Tile{
    /**
    * Class creates a forest tile which is a type of tile
    */
    public TileForest(int xPos, int yPos){
        /**
        * Constructor for forest tile. Position and image variables are set
        */
        xCord = xPos;
        yCord = yPos;
        tImage = loadImage("images/tiles/forest.jpg");
    }
}
