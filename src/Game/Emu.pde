abstract class Emu
{
    int attack;
    int hp;
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
    String name;
    boolean alive;


    public abstract void imagePrint();
}