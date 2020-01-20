class PitchForkHuman extends Human
{

    public PitchForkHuman( int row, int col)
    {
        this.typePath = idSet();
        this.attack = 50;
        this.hp = 1000;
        this.width = 75;
        this.height = 75;
        this.row = row;
        this.col = col;
        this.turn = 0;
        this.tile = map.terrainList[row][col];
        this.name = "human";
        this.xHuman = this.tile.xCord + 13;
        this.yHuman = this.tile.yCord + 13;
        this.hImage = loadImage("images/characters/man.jpg");
    }
    public int idSet(){
        int path = (int)random(1,10);
        System.out.println(path);
        return path;
    }

    public void imagePrint(){
        image(hImage,xHuman,yHuman,width,height);
    }
}
