abstract class EmuWarrior
{
  int eAttack;
  int eHp;
  int xEmu;
  int yEmu;
  int eWidth = 100;
  int eHeight = 100;
  PImage eImage;
  
   public void imagePrint()
  {
    image(eImage,xEmu,yEmu,eWidth,eHeight);
  }
  public abstract void select();
  public abstract void move();
  public abstract void attack();
}
