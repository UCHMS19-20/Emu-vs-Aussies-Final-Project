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
    public getX(){
        return xEmu;
    }
    public getY(){
        return yEmu;
    }
    public getWidth(){
        return width;
    }
    public getHeight(){
        return height;
    }
    public getSelected(){
        return selected;
    }
    public setSelected(boolean select)
    {
        this.selected = select;
    }
    public abstract void imagePrint();
    public abstract void move(String letter);

    
}
