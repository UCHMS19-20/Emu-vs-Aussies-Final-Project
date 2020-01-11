 public void move()
    {
        row ++;
        col ++;
        tile = tilemap.terrainList[row][col];
        xEmu = this.tile.xCord;
        yEmu = this.tile.yCord;
        image(eImage,xEmu,yEmu,eWidth,eHeight);
    }