class PitchForkHuman extends Human
{

    public PitchForkHuman( int row, int col)
    {
        this.attack = 50;
        this.hp = 1000;
        this.width = 80;
        this.height = 80;
        this.row = row;
        this.col = col;
        this.tile = map.terrainList[row][col];
        this.xEmu = this.tile.xCord + 15;
        this.yEmu = this.tile.yCord + 15;
        this.hImage = loadImage("images/characters/man.jpg");
    }
    public void imagePrint()
    {
        image(hImage,xEmu,yEmu,width,height);
    }
}
