class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  private float endX, endY, startY, startX;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    //your code here
    myNumSegments = len;
    myX = x;
    myY = y;
    myAngle = theta;
  }
  public void show()
  {
    //your code here
    if(myNumSegments == 50)
      stroke(255,0,0);
    if(myNumSegments == 10)
      stroke(0,255,0);
    if(myNumSegments == 2)
      stroke(0,255,255);
    startX = myX;
    startY = myY;
    //float endX;
    //float endY;
    for(int i = 0; i < myNumSegments; i++){
      myAngle += Math.random()*0.4-0.2;
      endX = startX + (float)Math.cos(myAngle)*SEG_LENGTH;
      endY = startY + (float)Math.sin(myAngle)*SEG_LENGTH;
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    }
    if(myNumSegments < 3){}
    else{
    new Cluster(myNumSegments/5, (int)startX, (int)startY);
    }
  }
}
