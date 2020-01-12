public class allEmu
{
    public ArrayList<Emu> emuList;

    public allEmu()
    {
        emuList = new ArrayList<Emu>(0);
    }
    public void update()
    {
        for(int i = 0; i < emuList.size(); i++)
        {
            emuList.get(i).imagePrint();
        }
    }
    public void select(int x, int y)
    {
        for(int i = 0; i < emuList.size(); i++){

            if(( x <emuList.get(i).getX()) && (x> (emuList.get(i).get(x) +emu.emuList.get(i).getWidth()))
            && (x <emuList.get(i).getY()) && (x> (emuList.get(i).get(x) +emu.emuList.get(i).getHeight())))
                {
                    setSelected(true);
                }

            else{
                setSelected(false);
            }
        }
    }
    public void moveChooser(String theKey)
    {
        Emu selectedEmu;
        for (int i = 0; i<emuList.size(); i ++)
        {
            if(getSelected == true){
                selectedEmu = emuList.get(i);
                break;
            }
        }
        selectedEmu.move();
    }   
}