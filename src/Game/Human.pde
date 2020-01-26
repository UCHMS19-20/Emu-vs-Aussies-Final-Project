abstract class Human
{    
    /**
    * Defines variables and functions that all classes 
    * which extend this will use.
    */
    int attack;
    int hp;
    int currentHp;
    int pathLength;
    int typePath;
    int xHuman;
    int yHuman;
    int row;
    int col;
    int width;
    int height;
    int turn;
    Tile tile;
    PImage hImage;
    boolean alive;
    boolean moved;

    /**
    * image print function which will 
    * be defined in classes which extend this
    */
    public abstract void imagePrint();
}