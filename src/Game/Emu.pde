abstract class Emu extends aCharacter
{
    int attack;
    int hp;
    int xEmu;
    int yEmu;
    int row;
    int col;
    Tile tile;
    Tilemap tileMap;
    PImage eImage;

    public abstract void imagePrint();
    public abstract void move(String letter);
    // public abstract void select();
}
