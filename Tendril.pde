class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
 
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    myX = x;
    myY = y;
    myAngle = theta;
    myNumSegments =len;
  }
  public void show()
  {
    int startX = myX;
    int startY = myY;
    stroke(0,255-myNumSegments*10, 0);
    for(int i = 0; i < myNumSegments; i++){
      myAngle+=(double)(Math.random()*.4)-.2;
      double endX = (double)(startX+Math.cos(myAngle)*SEG_LENGTH);
      double endY = (double)(startY+Math.sin(myAngle)*SEG_LENGTH);
      if (i > myNumSegments - 3) {
      stroke(255, 0, 0); 
    }
      line((float)(startX),(float)(startY),(float)(endX),(float)(endY));
      startX = (int)(endX);
      startY = (int)(endY);
    }
    fill(255,0,0);
    if(myNumSegments >= 3){
      
      Cluster c = new Cluster(myNumSegments/3, startX, startY);
      
    }
  }
}
