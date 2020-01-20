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
    Tile tile;
    Tilemap tileMap;
    PImage eImage;
    String name;

    public abstract void imagePrint();
}