class Rect{
   float x1,y1,size,py,sp,kosa;
   color c1;
    Rect(float x01,float y01,float s0,float kosa0,float sp0,color c0){
     x1 = x01;
     y1 = y01;
     size = s0;
     kosa = kosa0;
     sp = sp0;
     c1 = c0;
    }
void move(){
  y1 -= sp;
  if(y1+size < 0){
    y1 = 200+size;
  }
}
void display(){
    fill(c1,kosa);
    rect(x1,y1,size,size);
   }
}
