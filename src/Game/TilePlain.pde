import java.util.*;
class TilePlain extends Tile{
    /**
    * Class creates a plain tile which is a type of tile
    */
    public TilePlain(int xPos, int yPos){
        /**
        * Constructor for plain tile. Position and image variables are set
        */
        xCord = xPos;
        yCord = yPos;
        tImage = loadImage("images/tiles/plain.jpg");
    }
}
