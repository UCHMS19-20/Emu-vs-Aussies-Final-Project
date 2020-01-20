class PitchForkHuman extends Human
{
    int [] pathRow1;
    public PitchForkHuman()
    {
        this.typePath = pathSet();
        this.pathLength = 0;
        this.attack = 50;
        this.hp = 1000;
        this.width = 75;
        this.height = 75;
        this.row = 0;
        this.col = 0;
        this.turn = 0;
        this.tile = map.terrainList[row][col];
        this.name = "human";
        this.xHuman = this.tile.xCord + 13;
        this.yHuman = this.tile.yCord + 13;
        this.hImage = loadImage("images/characters/man.jpg");
    }
    public int pathSet()
    {
        float path = random(1,8);
        int intPath = (int)path;
        // System.out.println(intPath);
        return intPath;
    }

    public void imagePrint(){
        image(hImage,xHuman,yHuman,width,height);
    }
}
