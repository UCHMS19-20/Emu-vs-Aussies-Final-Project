class PitchForkHuman extends Human
{
        static int [] pathRow1 = {7,7,7,7,6,5,4,3,2,1,0,0,0,0};
        static int [] pathCol1 = {7,7,7,7,6,5,4,3,2,1,0,0,0,0};
        static int [] pathRow2 = {7,7,7,6,5,4,3,2,1,0,0,0,0};
        static int [] pathCol2 = {7,7,7,6,5,4,3,2,1,0,0,0,0};
        static int [] pathRow3 = {7,7,7,6,5,4,3,2,1,0,0,0,0};
        static int [] pathCol3 = {7,7,7,6,5,4,3,2,1,0,0,0,0};
        static int [] pathRow4 = {7,7,6,5,4,3,2,1,0,0,0,0};
        static int [] pathCol4 = {7,7,6,5,4,3,2,1,0,0,0,0};
        static int [] pathRow5 = {7,7,6,5,4,3,2,1,0,0,0,0};
        static int [] pathCol5 = {7,7,6,5,4,3,2,1,0,0,0,0};
        static int [] pathRow6 = {7,6,5,4,3,2,1,0,0,0,0};
        static int [] pathCol6 = {7,6,5,4,3,2,1,0,0,0,0};
        static int [] pathRow7 = {7,6,5,4,3,2,1,0,0,0,0};
        static int [] pathCol7 = {7,6,5,4,3,2,1,0,0,0,0};
    public PitchForkHuman()
    {
        this.typePath = pathSet();
        this.attack = 50;
        this.hp = 1000;
        this.width = 75;
        this.height = 75;
        this.row = -1;
        this.col = -1;
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
        System.out.println(path);
        return intPath;
    }

    public void imagePrint(){
        image(hImage,xHuman,yHuman,width,height);
    }
}
