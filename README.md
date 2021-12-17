# find-prime-numbers
The code is made with Processing language.
The algorithm uses the Eratosthenes sieve to color yellow all the pixels that are prime as numbering.
Given a window with dimensions X and Y, and the first pixel in the upper left identified with the number 1, and continuing with the numbering, all the pixels with prime numbers are colored yellow.

```processing
boolean[] n;
int i;
int last=2;

void setup(){
  size(1000,500);
  //fullScreen();
  background(0);
  loadPixels();
  n = new boolean[height*width];
  for (int i=0;i<n.length;i++){
    n[i] = true;
    pixels[i] = color(255,255,0);
  }
  updatePixels();
}

void draw(){
  if (last<Math.sqrt(n.length)) {
    for (i=last; i<n.length;i++){
      if (n[i]) {
        break;
      }
    }
    last = i+1; 
    
    for (int t=i+i;t<n.length;t+=i) {
      n[t] = false;
      pixels[t-1]=color(0);
    }
    
    pixels[n.length-1]=color(0);
    updatePixels();
  }
}
```
