class EmuFistFighter extends Emu
{

    public EmuFistFighter( int row, int col)
    {
        this.width = 100;
        this.height = 100;
        this.row = row;
        this.col = col;
        this.tile = map.terrainList[row][col];
        this.xEmu = this.tile.xCord + 15;
        this.yEmu = this.tile.yCord + 15;
        this.eImage = loadImage("images/characters/emu.jpg");
    }
    public void imagePrint()
    {
        image(eImage,xEmu,yEmu,width,height);
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
        xEmu = tile.xCord+15;
        yEmu = tile.yCord+15;
    }
}
