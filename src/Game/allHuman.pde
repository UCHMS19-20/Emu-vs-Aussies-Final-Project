public class allHuman
{
    public ArrayList<Human> humanList;

    public allHuman(){
        humanList = new ArrayList<Human>(0);
    }

    public void turnIncrement(){
        for(int i = 0; i < humanList.size(); i++){
            humanList.get(i).turn +=1;
        }
    }

    public void updateImage(){
        for(int i = 0; i < humanList.size(); i++)
        {
            humanList.get(i).imagePrint();
        }
    }

    public void fullTurn(){
        newHuman();
        move();
        updateImage();
        turnIncrement();
    }
    
    public void newHuman()
    {
        humanList.add(new PitchForkHuman());
    }

    public void move()
    {   Human human;
        for(int i = 0; i < humanList.size(); i++)
        {   human = humanList.get(i);

            switch(human.typePath)
            {
                case 1: 
                    human.row = PitchForkPitchForkHuman.pathRow1[human.turn];
                    human.col = PitchForkPitchForkHuman.pathCol1[human.turn];
                    break;
                case 2:
                    human.row = PitchForkHuman.pathRow2[human.turn];
                    human.col = PitchForkHuman.pathCol2[human.turn];
                    break;
                case 3:
                    human.row = PitchForkHuman.pathRow3[human.turn];
                    human.col = PitchForkHuman.pathCol3[human.turn];
                    break;
                case 4:
                    human.row = PitchForkHuman.pathRow4[human.turn];
                    human.col = PitchForkHuman.pathCol4[human.turn];
                    break;
                case 5:
                    human.row = PitchForkHuman.pathRow5[human.turn];
                    human.col = PitchForkHuman.pathCol5[human.turn];
                    break;
                case 6:
                    human.row = PitchForkHuman.pathRow6[human.turn];
                    human.col = PitchForkHuman.pathCol6[human.turn];
                    break;
                case 7:
                    human.row = PitchForkHuman.pathRow7[human.turn];
                    human.col = PitchForkHuman.pathCol7[human.turn];
                    break;
                default:
                    break;   
            }
            human.tile = map.terrainList[human.row][human.col];
            human.xHuman = human.tile.xCord+15;
            human.yHuman = human.tile.yCord+15;
        }
    }
}