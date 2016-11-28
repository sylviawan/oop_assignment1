class Vertex
{

  public PVector position;
  public float size;
  public ArrayList<Vertex> connections = new ArrayList<Vertex>();

  Vertex(PVector position) 
  {
    this.position = position;
    this.size = ThreadLocalRandom.current().nextInt(5, 20);
  }

  public void draw() 
  {
    ellipse(position.x, position.y, size, size);
    drawConnections();
  }

  void drawConnections()
  {
    for (Vertex v : connections) 
    {
      stroke(255);
      line(v.position.x, v.position.y, position.x, position.y);
    }
  }
}