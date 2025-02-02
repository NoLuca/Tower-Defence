Griglia griglia;
int cellSize = 40; // Dimensione delle celle
int larghezza = 20, altezza = 20; // Dimensioni della griglia

void setup() {
  size(800, 800);
  griglia = new Griglia(larghezza, altezza, cellSize);
}

void draw() {
  background(220);
  griglia.disegnaGriglia();
}

void mousePressed() {
  // Calcola le coordinate della cella cliccata
  int gridX = mouseX / cellSize;
  int gridY = mouseY / cellSize;

  // Posiziona una torre (verde) se possibile
  if (griglia.posizioneVuota(gridX, gridY)) {
    griglia.posizionaTorre(gridX, gridY);
  }
}

void keyPressed() { // Prova percorso
  if (key == 'p') {
    ArrayList<Punto> percorso = new ArrayList<Punto>();
    for (int i = 0; i < larghezza; i++) {
      percorso.add(new Punto(i, altezza / 2));
    }
    griglia.provaPercorso(percorso);
  }
}
