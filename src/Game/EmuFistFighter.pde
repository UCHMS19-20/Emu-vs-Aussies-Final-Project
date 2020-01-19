class EmuFistFighter extends Emu
{

    public EmuFistFighter( int row, int col)
    {
        this.width = 80;
        this.height = 80;
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
}
