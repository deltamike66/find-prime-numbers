boolean[] n; 
color c= color(255);
int max;
int count=0;

void setup(){
  //size(1000,1000);
  fullScreen();
  background(0);
  loadPixels();
  n = new boolean[height*width];
  //riempio la matrice
  for (int i=0;i<n.length;i++){
    n[i] = true;
  }
  max = height*width;
}

void draw(){
  background(0);
  loadPixels();
  count++;
  if (count<max) {
    for (int i=0;i<n.length;i++){
      if (n[i]) {
        pixels[i] = c;
      }
    }
    updatePixels();
    
    delay(1000);
    setaccia();
  }
}

void setaccia(){
  int i;
  for (i=2; i<n.length;i++){
    if (n[i]) {
      break;
    }
  }
  textSize(32);
  fill(0, 408, 612);
  text(i, 50,50);
  for (int t=i; t<n.length;t+=i){
    n[t] = false;
  }
}
