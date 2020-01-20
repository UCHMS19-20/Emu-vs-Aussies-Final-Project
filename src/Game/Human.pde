abstract class Human
{    
    int attack;
    int hp;
    int pathLength;
    int typePath;
    int xHuman;
    int yHuman;
    int row;
    int col;
    int width;
    int height;
    int turn;
    String name;
    Tile tile;
    Tilemap tileMap;
    PImage hImage;

    public abstract void imagePrint();
}