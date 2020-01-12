class EmuFistFighter extends EmuWarrior
{
    int eWidth = 100;
    int eHeight = 100;
    public EmuFistFighter( int row, int col)
    {
        this.row = row;
        this.col = col;
        this.tile = map.terrainList[row][col];
        this.xEmu = this.tile.xCord;
        this.yEmu = this.tile.yCord;
        this.eWidth = eWidth;
        this.eHeight = eHeight;
        this.eImage = loadImage("images/characters/emu.jpg");
    }
    public void imagePrint()
    {
        image(eImage,xEmu,yEmu,eWidth,eHeight);
    }

    public void move(String theKey)
    {
        switch(theKey)
        {
            case "w":
                if(row>0){
                row--;
                }
                break;
            case "s":
                if(row<map.rowNum()-1){
                row++;
                }
                break;
            case "a":
                if(col>0){
                col--;
                }
                break;
            case "d":
                if(col<map.colNum()-1){
                col++;
                }
                break;   
            default:
                break;
        }
        tile = map.terrainList[row][col];
        xEmu = tile.xCord;
        yEmu = tile.yCord;
    }
}
