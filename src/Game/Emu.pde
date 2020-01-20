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

    public abstract void imagePrint();
}