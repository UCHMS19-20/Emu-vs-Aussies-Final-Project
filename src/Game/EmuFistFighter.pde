class EmuFistFighter extends Emu
{

    public EmuFistFighter( int row, int col)
    {
        this.attack = 50;
        this.hp = 1000;
        this.width = 75;
        this.height = 75;
        this.row = row;
        this.col = col;
        this.name = "emu";
        this.tile = map.terrainList[row][col];
        this.xEmu = this.tile.xCord + 13;
        this.yEmu = this.tile.yCord + 13;
        this.eImage = loadImage("images/characters/emu.jpg");
    }
    public void imagePrint()
    {
        image(eImage,xEmu,yEmu,width,height);
    }
}
