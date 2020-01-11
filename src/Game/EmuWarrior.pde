abstract class EmuWarrior
{
    int eAttack;
    int eHp;
    int xEmu;
    int yEmu;
    int row;
    int col;
    Tile tile;
    Tilemap tileMap;
    PImage eImage;
  
  
    public abstract void imagePrint();
    public abstract void move();
}
