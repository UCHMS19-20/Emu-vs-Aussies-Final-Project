abstract class Human
{   
    int [] pathRow1;
    int [] pathCol1;
    int [] pathRow2;
    int [] pathCol2;
    int [] pathRow3;
    int [] pathCol3;
    int [] pathRow4;
    int [] pathCol4;
    int [] pathRow5;
    int [] pathCol5;
    int [] pathRow6;
    int [] pathCol6;
    int [] pathRow7;
    int [] pathCol7;

        
    int attack;
    int hp;
    int typePath;
    int xHuman;
    int yHuman;
    int row;
    int col;
    int width;
    int height;
    int turn;
    String name;
    Tile tile;
    Tilemap tileMap;
    PImage hImage;

    public abstract void imagePrint();
}