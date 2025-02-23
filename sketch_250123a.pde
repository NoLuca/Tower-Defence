private static int vita = 100;

public static void prendiDanno(int danno){
    vita -= danno;
    if(vita < 0){
        vita = 0;
    }
}

public static int getVita(){
    return vita;
}
