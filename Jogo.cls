public virtual class Jogo {
    public String equipe1;
    public String equipe2;
    public Decimal[] placar;
    
    public Jogo(String equipe1, String equipe2) {
        this.equipe1 = equipe1;
        this.equipe2 = equipe2;
        this.placar = new Decimal[2];
    }
}