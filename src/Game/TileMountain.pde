import java.util.*;
class TileMountain extends Tile{
    /**
    * Class creates a mountain tile which is a type of tile
    */
    public TileMountain(int xPos, int yPos){
        /**
        * Constructor for mountain tile. Position and image variables are set
        */
        xCord = xPos;
        yCord = yPos;
        tImage = loadImage("images/tiles/mountain.jpg");
    }
}
