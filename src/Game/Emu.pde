abstract class Emu extends aCharacter
{
    int attack;
    int hp;
    int xEmu;
    int yEmu;
    int row;
    int col;
    int width;
    int height;
    boolean selected = false;
    Tile tile;
    Tilemap tileMap;
    PImage eImage;
    public int getX(){
        return xEmu;
    }
    public int getY(){
        return yEmu;
    }
    public int getWidth(){
        return width;
    }
    public int getHeight(){
        return height;
    }
    public boolean getSelected(){
        return selected;
    }
    public void setSelected(boolean select)
    {
        this.selected = select;
    }
    public abstract void imagePrint();
    public abstract void move(String letter);

    
}
