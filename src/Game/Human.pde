abstract class Human
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
    PImage hImage;

    public abstract void imagePrint();
}