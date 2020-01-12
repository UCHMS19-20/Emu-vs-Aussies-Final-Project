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
    
}