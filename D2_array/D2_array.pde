void setup(){
int[][] ship = new int[10][10];
for(int i=0;i<10;i++){
  for(int j=0;j<10;j++){
    ship[i][j]=i*10+j ;
  }
}
    
for(int i=0;i<10;i++){
  for(int j=0;j<10;j++){
    print(char(i+65),j+1,ship[i][j]," ");
  }
  println();
}
}
