abstract class EmuWarrior
{
  int eAttack;
  int eHp;
  int xEmu;
  int yEmu;
  int eWidth = 100;
  int eHeight = 100;
  PImage eImage;
  
  public int hitBox()
  {
    int lt = xEmu;
    int rt = yEmu;
    int lb = xEmu += eWidth;
    int rb = yEmu += eHeight;
  }

  public boolean inHitBox()
  {
    
  }
  public abstract void imagePrint()
  public abstract void select();
  public abstract void move();
  public abstract void attack();
}
