// Paulina Tassara 
// Comision 1 
//tp3 Tunel Optico 
// https://youtu.be/lxu7aGUhUoU


PImage mimage;

int filas = 12;
int columnas = 12;

//interactividad 
boolean moviendo = false;
float tiempo = 0;

void setup(){
size (800,400);
rectMode(CORNER); 
mimage = loadImage("29.jpg");

}

void draw(){
background(255);
float mitadAncho = width/2;
float altoFila= height/ filas;

image(mimage,0,0,mitadAncho,height);

if (moviendo){
tiempo +=0.04;
}else{
  tiempo = 0;
}
pushMatrix();
translate(mitadAncho,0);
dibujarGrilla(mitadAncho/2,filas,columnas,altoFila,true);
translate(mitadAncho/2,0);
dibujarGrilla(mitadAncho/2,filas,columnas-1,altoFila,false);
popMatrix();
}

void dibujarGrilla(float ancho,int filas,int columnas,float altoFila, boolean invertido){
  for (int f = 0;f<filas;f++){
    float x = 0;
    float desplazamientoFila=0;
    if (moviendo){
      desplazamientoFila=(f+1)*tiempo*20;
      if(desplazamientoFila>ancho)desplazamientoFila=0;
    }
    for (int c = 0;c<columnas;c++){
      float tam;
      if (invertido){
        tam = map(c,0,columnas-1,altoFila*1.2,2);
      }else{
        tam=map(c,0,columnas-1,2,altoFila*1.2);
      }
      float promedioTam= (altoFila*1.2+2)/2;
      float factor= ancho/(promedioTam * columnas);
      tam=tam*factor;
      noStroke();
      if ((c+ f)%2==0){
        if (moviendo) fill(255,204,0);
        else fill(0);
      }else{
        fill(255);
      }
      rect(x+desplazamientoFila, f*altoFila, tam,altoFila);
      x+=tam;
    }
  }
}
void mousePressed(){
  moviendo=!moviendo;
}
