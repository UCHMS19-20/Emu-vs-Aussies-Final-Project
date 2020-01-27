class TileAusMap extends Tilemap
{
    /**
    * Class creates a map from the tiles supplied to it
    */

    int x = 0;
    int y = 0;

    //1: Plain 2:Forest 3: Mountain4:  Desert 5: Emu Base 6: Human Base
    int []numT = {1,1,1,1,1,1,1,
                  1,1,1,1,1,1,1,
                  1,1,1,1,1,1,1,
                  5,1,1,1,1,1,6,
                  1,1,1,1,1,1,1,
                  1,1,1,1,1,1,1,
                  1,1,1,1,1,1,1,};

    public TileAusMap(int rowNum,int colNum){
        /**
        * Constructor for australia map class. 
        * It defines location variables and makes the matrix
        */
        rows = rowNum;
        cols = colNum;
        makeMatrix();
    }
    
    public void mapDisplay(){
        /**
        * Prints tile image in each tile location
        */
        for(int i = 0; i< rows; i++){
            for(int j = 0; j< cols; j++){
                terrainList[i][j].imagePrint();
            }
        }
    }

    public void makeMatrix(){
        /**
        * Sets the location for all tiles in the terrainList matrix based on the numT array numbers
        */
        terrainList = new Tile [rows][cols];
        for(int i = 0; i< rows; i++){
            for(int j = 0; j< cols; j++){
                if(numT[i*(cols)+(j+1)-1] == 1){
                    terrainList[i][j] = new TilePlain(x,y);
                }
                else if(numT[i*(cols)+(j+1)-1] == 2){
                    terrainList[i][j] = new TileForest(x,y);
                }
                else if(numT[i*(cols)+(j+1)-1] == 3){
                    terrainList[i][j] = new TileMountain(x,y);
                }
                else if(numT[i*(cols)+(j+1)-1] == 4){
                    terrainList[i][j] = new TileDesert(x,y);
                }
                else if(numT[i*(cols)+(j+1)-1] == 5){
                    terrainList[i][j] = new TileHumanBase(x,y);
                }
                else if(numT[i*(cols)+(j+1)-1] == 6){
                    terrainList[i][j] = new TileEmuBase(x,y);
                }
                x+=100;
            }
            y+=100;
            x = 0;
        }
    }
}