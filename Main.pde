Griglia griglia;
Percorso percorso;
int cellSize = 40; // Dimensione delle celle
int larghezza = 20, altezza = 20; // Dimensioni della griglia

void setup() {
  size(800, 800);
  griglia = new Griglia(larghezza, altezza, cellSize);
  percorso = new Percorso(larghezza, altezza);
  griglia.disegnaPercorso(percorso);
}

void draw() {
  background(220);
  griglia.disegnaGriglia();
}

void mousePressed(){
  // Calcola le coordinate della cella cliccata
  int gridX = mouseX / cellSize;
  int gridY = mouseY / cellSize;

  // Posiziona una torre (verde) se possibile
  if(griglia.posizioneVuota(gridX, gridY)){
    griglia.posizionaTorre(gridX, gridY);
  }
}
