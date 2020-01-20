public class allHuman
{
    public ArrayList<Human> humanList;
    int [] pathRow1 = {3,3,3,3,3,3,3};
    int [] pathCol1 = {6,5,4,3,2,1,0};
    int [] pathRow2 = {2,2,2,2,2,2,2,3};
    int [] pathCol2 = {6,5,4,3,2,1,0,0};
    int [] pathRow3 = {4,4,4,4,4,4,4,3};
    int [] pathCol3 = {6,5,4,3,2,1,0,0};
    int [] pathRow4 = {1,1,1,1,1,1,1,2,3};
    int [] pathCol4 = {6,5,4,3,2,1,0,0,0};
    int [] pathRow5 = {5,5,5,5,5,5,5,4,3};
    int [] pathCol5 = {6,5,4,3,2,1,0,0,0};
    int [] pathRow6 = {0,0,0,0,0,0,0,1,2,3};
    int [] pathCol6 = {6,5,4,3,2,1,0,0,0,0};
    int [] pathRow7 = {6,6,6,6,6,6,6,5,4,3};
    int [] pathCol7 = {6,5,4,3,2,1,0,0,0,0};

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
        turnIncrement();
    }
    
    public void newHuman()
    {
        humanList.add(new PitchForkHuman());
        Human human;
        human = humanList.get(humanList.size()-1);
        switch(human.typePath)
        {   
            case 1:
                human.pathLength = pathRow1.length;
                break;
            case 2:
                human.pathLength = pathRow2.length;
                break;
            case 3:
                human.pathLength = pathRow3.length;
                break;
            case 4:
                human.pathLength = pathRow4.length;
                break;
            case 5:
                human.pathLength = pathRow5.length;
                break;
            case 6:
                human.pathLength = pathRow6.length;
                break;
            case 7:
                human.pathLength = pathRow7.length;
                break;
        }
    }
        

    public void move()
    {   Human human;
        for(int i = 0; i < humanList.size(); i++)
        {   human = humanList.get(i);

            switch(human.typePath)
            {
                case 1: 
                    human.row = pathRow1[human.turn];
                    human.col = pathCol1[human.turn];
                    break;
                case 2:
                    human.row = pathRow2[human.turn];
                    human.col = pathCol2[human.turn];
                    break;
                case 3:
                    human.row = pathRow3[human.turn];
                    human.col = pathCol3[human.turn];
                    break;
                case 4:
                    human.row = pathRow4[human.turn];
                    human.col = pathCol4[human.turn];
                    break;
                case 5:
                    human.row = pathRow5[human.turn];
                    human.col = pathCol5[human.turn];
                    break;
                case 6:
                    human.row = pathRow6[human.turn];
                    human.col = pathCol6[human.turn];
                    break;
                case 7:
                    human.row = pathRow7[human.turn];
                    human.col = pathCol7[human.turn];
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