public class allEmu
{
    public ArrayList<Emu> emuList;
    int selectedIndex;

    public allEmu()
    {
        emuList = new ArrayList<Emu>(0);
        selectedIndex = 0;
    }
    public void update()
    {
        // System.out.println(emuList.size());
        for(int i = 0; i < emuList.size(); i++)
        {
            emuList.get(i).imagePrint();
        }
    }
    public void select(int x, int y)
    {   
        for(int i = 0; i < emuList.size(); i++){

            if(( x >emuList.get(i).getX()) && (x< (emuList.get(i).getX() +emuList.get(i).getWidth()))
            && (y >emuList.get(i).getY()) && (y< (emuList.get(i).getY() +emuList.get(i).getHeight())))
            {
                // emuList.get(i).setSelected(true);
                selectedIndex = i;
            }
        }
    }
    public void move(String theKey)
    { 
        Emu emu = emuList.get(selectedIndex);
        
        int tempRow = emu.row;
        int tempCol = emu.col;
        
        System.out.println(emu.row);
        System.out.println(emu.col);
        switch(theKey)
        {
            case "w":
                if(emu.row>0 && !(sameLoc(++tempRow , tempCol))){
                emu.row--;
                }
                break;
            case "s":
                if(emu.row<map.rowNum()-1 && !(sameLoc(++tempRow, tempCol))){
                emu.row++;
                }
                break;
            case "a":
                if(emu.col>0 && !(sameLoc(tempRow, --tempCol ))){
                emu.col--;
                }
                break;
            case "d":
                if(emu.col<map.colNum()-1 && !(sameLoc(tempRow, ++tempCol ))){
                emu.col++;
                }
                break;
            default:
                break;
        }
        emu.tile = map.terrainList[emu.row][emu.col];
        emu.xEmu = emu.tile.xCord+15;
        emu.yEmu = emu.tile.yCord+15;
    }
    public boolean sameLoc(int row, int col)
    {
        for(int i = 0; i< emuList.size(); i++){
            if((row == emuList.get(j).row) && (col == emuList.get(j).col) &&!(selectedIndex == i))
            {
                return true;
            }
        }
        return false;
    }
}