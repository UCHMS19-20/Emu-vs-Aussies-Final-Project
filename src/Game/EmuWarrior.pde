abstract class EmuWarrior
{
  int attack;
  int defense;
  int xEmu;
  int yEmu;
  int sWidth = 100;
  int sHeight = 100;
  PImage sImage;
  public abstract void make();
  public abstract void select();
  public abstract void move();
  public abstract void attack();
}
