public class Cluster
{
  public final static int NUM_STEMS = 7; //number of tendrils per cluster

  public Cluster(int len, int x, int y)
  {
    // your code here
    for (int i = 0; i <= (2*6.28); i+=(2*6.28/7)) {
      new Tendril(len, i, x, y).show();
    }
  }
}
