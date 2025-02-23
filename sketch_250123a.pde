private static int vitaIniziale = 100;
private static int vita = vitaIniziale;

public static void prendiDanno(int danno){
    vita -= danno;
    if(vita < 0){
        vita = 0;
    }
}

public static int getVita(){
    return vita;
}

public static void resetVita(){
    vita = vitaIniziale;
}

public static boolean isGameOver(){
    return vita <= 0;
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

void drawMorte(){
    int larghezzaRettangolo = 300;
    int altezzaRettangolo = 150;
    int xRettangolo = (width - larghezzaRettangolo) / 2;
    int yRettangolo = (height - altezzaRettangolo) / 2;

    // Sfondo
    fill(255);
    stroke(0);
    rect(xRettangolo, yRettangolo, larghezzaRettangolo, altezzaRettangolo);

    // Testo GameOver
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(64);
    text("Game Over", width / 2, height / 2 - 20);

    // Testo riprova
    textSize(32);
    text("R per riprovare", width / 2, height / 2 + 30);
}
