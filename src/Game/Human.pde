abstract class Human
{    
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
    String name;
    Tile tile;
    Tilemap tileMap;
    PImage hImage;
    boolean alive;
    boolean moved;

    public abstract void imagePrint();
}