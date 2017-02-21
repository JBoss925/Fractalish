float radius = 10;
float i = 1;
float x = 0;
float dx = 4;
float frequency = 25;
int width = 1000;
int height = 1000;
int amplitude = 100;
int repetitions = 0;
int repetitionLimit = 4;
int redMin = 100;
int redMax = 255;
int blueMin = 100;
int blueMax = 255;
int greenMin = 0;
int greenMax = 0;


void setup(){
  size(1000, 1000);
  background(0);
}


void draw(){
  if(repetitions<=repetitionLimit - 1){
   stroke(0);
   fill(random(redMax - redMin) + redMin, random(greenMax - greenMin) + greenMin, random(blueMax - blueMin) + blueMin);
   ellipse(x, sin(i/frequency) * amplitude + height/2, radius * 2, radius * 2);
   ellipse(x, -sin(i/frequency) * amplitude + height/2, radius * 2, radius * 2);
   ellipse(width - x, sin(i/frequency) * amplitude + height/2, radius * 2, radius * 2);
   ellipse(width - x, -sin(i/frequency) * amplitude + height/2, radius * 2, radius * 2);
   ellipse(sin(i/frequency) * amplitude + width/2, x, radius * 2, radius * 2);
   ellipse(-sin(i/frequency) * amplitude + width/2, x, radius * 2, radius * 2);
   ellipse(sin(i/frequency) * amplitude + width/2, height - x, radius * 2, radius * 2);
   ellipse(-sin(i/frequency) * amplitude + width/2, height - x, radius * 2, radius * 2);
   ellipse(cos(PI / 4) * (sin(i/frequency) * amplitude) - sin(PI / 4) * x + width, sin(PI / 4) * (sin(i/frequency) * amplitude) + cos(PI / 4) * x, radius * 2, radius * 2);
   ellipse(cos(PI / 4) * (-sin(i/frequency) * amplitude) - sin(PI / 4) * x + width, sin(PI / 4) * (-sin(i/frequency) * amplitude) + cos(PI / 4) * x, radius * 2, radius * 2);
   ellipse(cos(PI / 4) * (sin(i/frequency) * amplitude) + sin(PI / 4) * x, -sin(PI / 4) * (sin(i/frequency) * amplitude) + cos(PI / 4) * x, radius * 2, radius * 2);
   ellipse(cos(PI / 4) * (-sin(i/frequency) * amplitude) + sin(PI / 4) * x, -sin(PI / 4) * (-sin(i/frequency) * amplitude) + cos(PI / 4) * x, radius * 2, radius * 2);
   ellipse(cos(PI / 4) * (sin(i/frequency) * amplitude) + sin(PI / 4) * x, -(-sin(PI / 4) * (sin(i/frequency) * amplitude) + cos(PI / 4) * x) + height, radius * 2, radius * 2);
   ellipse(cos(PI / 4) * (-sin(i/frequency) * amplitude) + sin(PI / 4) * x, -(-sin(PI / 4) * (-sin(i/frequency) * amplitude) + cos(PI / 4) * x) + height, radius * 2, radius * 2);
   ellipse(cos(PI / 4) * (sin(i/frequency) * amplitude) - sin(PI / 4) * x + width, -(sin(PI / 4) * (sin(i/frequency) * amplitude) + cos(PI / 4) * x) + height, radius * 2, radius * 2);
   ellipse(cos(PI / 4) * (-sin(i/frequency) * amplitude) - sin(PI / 4) * x + width, -(sin(PI / 4) * (-sin(i/frequency) * amplitude) + cos(PI / 4) * x) + height, radius * 2, radius * 2);
   x = x + dx;
   i++;
   if(x>=sqrt((width*width) + (height*height))){
    x = 0;
    repetitions++;
   }
  }
}