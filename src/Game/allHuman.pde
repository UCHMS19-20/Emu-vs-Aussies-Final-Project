public class allHuman
{
    public ArrayList<Human> humanList;
    int [] pathRow3 = {3,3,3,3,3,3,3};
    int [] pathCol3 = {6,5,4,3,2,1,0};
    int [] pathRow2 = {2,2,2,2,2,2,2,3};
    int [] pathCol2 = {6,5,4,3,2,1,0,0};
    int [] pathRow4 = {4,4,4,4,4,4,4,3};
    int [] pathCol4 = {6,5,4,3,2,1,0,0};
    int [] pathRow1 = {1,1,1,1,1,1,1,2,3};
    int [] pathCol1 = {6,5,4,3,2,1,0,0,0};
    int [] pathRow5 = {5,5,5,5,5,5,5,4,3};
    int [] pathCol5 = {6,5,4,3,2,1,0,0,0};
    int [] pathRow0 = {0,0,0,0,0,0,0,1,2,3};
    int [] pathCol0 = {6,5,4,3,2,1,0,0,0,0};
    int [] pathRow6 = {6,6,6,6,6,6,6,5,4,3};
    int [] pathCol6 = {6,5,4,3,2,1,0,0,0,0};

    public allHuman(){
        humanList = new ArrayList<Human>(0);
    }

    public void turnIncrement(){
        for(int i = 0; i < humanList.size(); i++){
            if(humanList.get(i).alive == true && humanList.get(i).moved == true){
                humanList.get(i).turn +=1;
                System.out.println("yes");
            }
            else {
                System.out.println("no");
            }
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
        human.number = humanList.size();
        switch(human.typePath)
        {   
            case 1:
                human.pathLength = pathRow0.length;
                break;
            case 2:
                human.pathLength = pathRow1.length;
                break;
            case 3:
                human.pathLength = pathRow2.length;
                break;
            case 4:
                human.pathLength = pathRow3.length;
                break;
            case 5:
                human.pathLength = pathRow4.length;
                break;
            case 6:
                human.pathLength = pathRow5.length;
                break;
            case 7:
                human.pathLength = pathRow6.length;
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
                    if(!(humanCollision(pathRow0[human.turn],pathCol0[human.turn],i))){
                        human.row = pathRow0[human.turn];
                        human.col = pathCol0[human.turn];
                        human.moved = true;
                    }
                    break;
                case 2:
                    if(!(humanCollision(pathRow1[human.turn],pathCol1[human.turn],i))){
                        human.row = pathRow1[human.turn];
                        human.col = pathCol1[human.turn];
                        human.moved = true;
                    }
                    break;
                
                case 3:
                    if(!(humanCollision(pathRow2[human.turn],pathCol2[human.turn],i))){
                        human.row = pathRow2[human.turn];
                        human.col = pathCol2[human.turn];
                        human.moved = true;
                    }
                    break;
                case 4:
                    if(!(humanCollision(pathRow3[human.turn],pathCol3[human.turn],i))){
                        human.row = pathRow3[human.turn];
                        human.col = pathCol3[human.turn];
                        human.moved = true;
                    }
                    break;
                case 5:
                    if(!(humanCollision(pathRow4[human.turn],pathCol5[human.turn],i))){
                        human.row = pathRow4[human.turn];
                        human.col = pathCol4[human.turn];
                        human.moved = true;
                        
                    }   
                    break;
                case 6:
                    if(!(humanCollision(pathRow5[human.turn],pathCol5[human.turn],i))){
                        human.row = pathRow5[human.turn];
                        human.col = pathCol5[human.turn];
                        human.moved = true;
                    }
                    break;
                case 7:
                    if(!(humanCollision(pathRow6[human.turn],pathCol6[human.turn],i))){
                        human.row = pathRow6[human.turn];
                        human.col = pathCol6[human.turn];
                        human.moved = true;
                    }
                    break;
                default:
                    break;   
            }
            human.tile = map.terrainList[human.row][human.col];
            human.xHuman = human.tile.xCord+15;
            human.yHuman = human.tile.yCord+15;
        }
    }
    public boolean humanCollision(int row,int col, int index){
        for(int i = 0;i< humanList.size();i++){
             if(row == humanList.get(i).row && col == humanList.get(i).col && humanList.get(i).alive == true){
                 System.out.println("true");
                 return true;
             }
        }
        return false;
    }
    public void movedFalse(){
        for(int i = 0; i< humanList.size();i++){
            humanList.get(i).moved = false;
        }
    }
}