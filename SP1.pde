// Arrays til at gemme land,flagfiler og grupper
String[] landNavne = {
  "RUSSIA", "SAUDI ARABIA", "EGYPT", "URUGUAY",
  "PORTUGAL", "SPAIN", "MOROCCO", "IRAN",
  "FRANCE", "AUSTRALIA", "PERU", "DENMARK",
  "ARGENTINA", "ICELAND", "CROATIA", "NIGERIA"
};

String[][] flagFil = {
  {"russia.png", "saudi.png", "egypt.png", "uruguay.png"}, // Gruppe A
  {"portugal.png", "spain.png", "morocco.png", "iran.png"}, // Gruppe B
  {"france.png", "australia.png", "peru.png", "denmark.png"}, // Gruppe C
  {"argentina.png", "iceland.png", "croatia.png", "nigeria.png"}  // Gruppe D
};

String[] grupper = {"GROUP A", "GROUP B", "GROUP C", "GROUP D"};
PImage[][] flag = new PImage[4][4];

float[] landX = {
  20, 20, 20, 20,
  20, 20, 20, 20,
  520, 520, 520, 520,
  520, 520, 520, 520
};

float[] landY = {
  60, 110, 160, 210,
  290, 340, 390, 440,
  60, 110, 160, 210,
  290, 340, 390, 440
};

void setup() {
  size(1000, 500);


  for (int g = 0; g < 4; g++) {
    for (int i = 0; i < 4; i++) {
      flag[g][i] = loadImage(flagFil[g][i]);
    }
  }
}

void draw() {
  background(40, 50, 80);

  //Hvid linje i midten
  stroke(255);
  strokeWeight(2);
  line(width/2, 0, width/2, height);

  //Gruppe overskrifter
  textAlign(CENTER, CENTER);
  textSize(25);

  //Tekst for grupperne
  fill(0, 200, 255);
  text("GROUP A", 250, 35);


  fill(255, 255, 0);
  text("GROUP B", 250, 265);


  fill(0, 200, 255);
  text("GROUP C", 750, 35);


  fill(255, 255, 0);
  text("GROUP D", 750, 265);

  // Tekst for landnavnene
  textSize(35);

  // Alle lande
  for (int i = 0; i < landNavne.length; i++) {
    tegnLand(landNavne[i], landX[i], landY[i], i);
  }
}

void tegnLand(String navn, float x, float y, int index) {
  // Baggrund for landbox
  fill(255);
  stroke(0);
  strokeWeight(1);
  rect(x, y, 460, 40);

  // Indsætte flagfiler
  int gruppe = index / 4;
  int position = index % 4;
  image(flag[gruppe][position], x + 5, y + 5, 80, 30);

  // Navn for landene
  fill(0);
  textAlign(LEFT, CENTER);
  text(navn, x + 100, y + 25);
}
