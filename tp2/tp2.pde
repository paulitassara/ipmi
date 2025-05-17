// Paulina Tassara 
// Comision 1

PImage foto1, foto2, foto3;
PFont t, t2, t3, t4;

String texto1 = "GUARDIANES DE LA GALAXIA";
String texto2 = "Star-Lord, un aventurero intergaláctico, busca vender un artefacto llamado el Orbe que contiene una Gema del Infinito. Para hacerlo, se junta con una banda de forajidos: Gamora, Rocket Raccoon, Groot y Drax. Juntos, evaden a cazarrecompensas y a Ronan el Acusador, quien busca el Orbe para destruir Xandar y obtener el poder de las Gemas";
String texto3 = "Director:  James Gunn / Guionistas: Nicole Perlman";
String texto4 = "Reparto:  Chris Pratt, Zoe Saldaña, Vin Diesel, Dave Bautista, Sean Gunn, Bradley Cooper, Karen Gillan, Michael Rooker,  laura haddock";

float posX;
float posY;
int segundos = 0;

int posBotX, posBotY, anchoBot, altoBot;

void setup() {
  size(640, 480);
  t = loadFont("SitkaSubheading-BoldItalic-48.vlw"); 
  t2 = loadFont("YuGothicUI-Bold-48.vlw");
  t3 = loadFont("YuGothicUI-Bold-48.vlw");
  t4 = loadFont("YuGothicUI-Bold-48.vlw");

  textFont(t, 20);
  textAlign(CENTER);

  foto1 = loadImage("guardianes de la galaxia 1.jpg"); 
  foto2 = loadImage("guardianes de la galaxia 2.jpg");
  foto3 = loadImage("guardianes de la galaxia 3.jpg");

  posX = -300;
  posY = height + 50;

//posicion del boton 

  anchoBot = 100;
  altoBot = 40;
  posBotX = width - anchoBot - 20;
  posBotY = height - altoBot - 20;
}

void draw() {
  if (frameCount % 60 == 0) {
    segundos++;
  }

//primer pantalla en negro con el titulo

  background(0);

  if (segundos < 5) {
    if (posX < width / 2) {
      posX += 3;
    }
    fill(255);
    textFont(t, 40);
    text(texto1, posX, height / 2);

//primer imgen con ya informacion de la pelicula 

  } else if (segundos < 15) {
    image(foto1, 0, 0, width, height);
    posY -= 1;

    fill(255);
    textFont(t2, 24);
    textAlign(LEFT);
    text(texto2, 20, posY, width - 40, height);

//segunda imagen 

  } else if (segundos < 20) {
    image(foto2, 0, 0, width, height);

    fill(255);
    textFont(t3, 20);
    textAlign(CENTER);
    text(texto3, width / 2, height - 400);

//tercera imagen 

  } else if (segundos < 27) {
    if (segundos == 20) {
      posY = height;
    }

    image(foto3, 0, 0, width, height);

    if (segundos < 22) {
      posY -= 2;
      if (posY < height / 2) {
        posY = height / 2;
      }
    } else if (segundos > 24) {
      posY -= 1;
    }

//que el texto se agrande y se quede en un lugar y despues siga 

    float tamanoTexto = map(segundos + (frameCount % 60) / 60.0, 20, 27, 25, 30);
    fill(255);
    textFont(t4, tamanoTexto);
    textAlign(LEFT);
    text(texto4, 20, posY, width - 40, height);
  }
 
 //dibujo de boton 
 
  if (mouseX > posBotX && mouseX < posBotX + anchoBot && mouseY > posBotY && mouseY < posBotY + altoBot) {
    fill(255, 0, 0);
  } else {
    fill(255);
  }

  rect(posBotX, posBotY, anchoBot, altoBot);

  fill(0);
  textAlign(CENTER, CENTER);
  textFont(t2, 16);
  text("Reiniciar", posBotX + anchoBot / 2, posBotY + altoBot / 2);
}

void mousePressed() {
  if (segundos > 4) {
    if (mouseX > posBotX && mouseX < posBotX + anchoBot && mouseY > posBotY && mouseY < posBotY + altoBot) {
      segundos = 0;
      posX = -300;
      posY = height + 50;
    }
  }
}
