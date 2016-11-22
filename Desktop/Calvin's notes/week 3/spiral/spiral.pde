void setup ()
{
    size (600,600);
    r=0;
    size=20;
    x= width/2;
    y=height/2;

}

float r, x, y, time, size;

void draw()
{
    fill(random(255),random(255),random(255));
    time=millis()/100.0f;
    y=width/2+ cos(time)*r;
    x=height/2+sin(time)*r;
    ellipse(x,y,size,size);
    r++;
    size++;
}