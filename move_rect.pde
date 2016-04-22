Rect[] rect;

color c0 = color(228,0,127); //pink
color c1 = color(0,104,183); //blue
color c2 = color(0,158,150); //midori
color c3 = color(243,152,0); //orenge
color c4 = color(230,0,18); //red
color c5 = color(255,241,0); //yellow
color c6 = color(103, 149,227); //mizu
color c7 = color(86, 209,168); // usu midori 


//rect kazu
int N = 80;

void setup() {
    size(200, 200);
    frameRate(20);
    colorMode(RGB, random(255), random(255), random(255));
    float[] tx;
    float[] ty;
    tx = new float[N];
    ty = new float[N];
    rect = new Rect[N];
     for(int i=0;i<N;i++){
      tx[i] = random(0,190); //始点
      ty[i] = random(0,200);
      //size
      float size=random(6.0, 40.0);
      //speed
      float sp=random(0.15, 1.5);
       //kosa
      int kosa = 190;
      //color
      color iro;
      int setting = int(random(0,8));
            //color setting
      if(setting==0){
        iro = c0;
      }else if(setting==1){
        iro = c1;
      }else if(setting==2){
        iro = c2;
      }else if(setting==3){
        iro = c3;
      }else if(setting==4){
        iro = c4;
      }else if(setting==5){
        iro = c5;
      }else if(setting==6){
        iro = c6;
      }else{
        iro = c7;
      }      
      rect[i] = new Rect(tx[i],ty[i],size,kosa,sp,iro); 
     }
}
void draw() {
      smooth();
    noStroke();
    background(255, 255, 255);
        for(int i=0;i<N;i++){
    rect[i].display();
    rect[i].move();
    }
}

