Griglia griglia;
Percorso percorso;
int cellSize = 40; // Dimensione delle celle
int larghezza = 20, altezza = 20; // Dimensioni della griglia
NemicoVeloce nemico;
NemicoManager nemicoManager;
Menu menu;
boolean giocoAttivo = false;

void setup() {
  size(800, 800);
  griglia = new Griglia(larghezza, altezza, cellSize);
  percorso = new Percorso(larghezza, altezza);
  griglia.disegnaPercorso(percorso);
  nemico = new NemicoVeloce(percorso);
  nemicoManager = new NemicoManager();
  menu = new Menu();
}

void draw(){
  if(!giocoAttivo){
    menu.draw();
  }else{
    background(220);
    griglia.draw();
    nemicoManager.draw();  
    nemicoManager.aggiorna();
    drawVita();
  }
}

void drawVita(){
  // Sfondo
  fill(255);
  noStroke();
  rect(60, 10, 120, 40);

  // Testo
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(32);
  text("Vita: " + getVita(), 120, 30);
}

void mousePressed(){
  // Inizia il gioco
  if(!giocoAttivo && menu.bottoneInizio.isCliccato(mouseX, mouseY)){
    giocoAttivo = true;
    nemicoManager.generaOndata();
    return;
  }

  // Calcola le coordinate della cella cliccata
  int gridX = mouseX / cellSize;
  int gridY = mouseY / cellSize;

  // Posiziona una torre se possibile
  if(griglia.posizioneVuota(gridX, gridY) && giocoAttivo){
    griglia.posizionaTorre(gridX, gridY);
  }
}
