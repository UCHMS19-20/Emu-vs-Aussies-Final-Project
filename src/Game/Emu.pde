abstract class Emu
{
    /**
    * Defines variables and functions that all classes 
    * which extend this will use.
    */
    int attack;
    int hp;
    int currentHp;
    int xEmu;
    int yEmu;
    int row;
    int col;
    int width;
    int height;
    int moveNum;
    int maxMove;
    Tile tile;
    Tilemap tileMap;
    PImage eImage;
    boolean alive;

    /**
    * image print function which will 
    * be defined in classes which extend this
    */
    public abstract void imagePrint();
}