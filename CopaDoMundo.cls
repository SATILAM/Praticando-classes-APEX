public virtual class CopaDoMundo extends Jogo {
    public List<Jogo> JogoOitavas; 
    public List<Jogo> JogoQuartas; 
    public List<Jogo> JogoSemis;
    public List<Jogo> JogoFinal;
    
    public CopaDoMundo(String equipe1, String equipe2) {
        super(equipe1, equipe2);
        this.JogoOitavas = new List<Jogo>();
        this.JogoQuartas = new List<Jogo>();
        this.JogoSemis = new List<Jogo>();
        this.JogoFinal = new List<Jogo>();
    }
    
    public void atualizarPlacar(String equipe1, String equipe2, Decimal[] placar, String fase) {
        // encontra o jogo correspondente
        Jogo jogo = null;
        if (fase == 'Jogo Oitavas') {
            jogo = JogoOitavas.remove(0);
        } else if (fase == 'Jogo Quartas') {
            jogo = JogoQuartas.remove(0);
        } else if (fase == 'Jogo Semis') {
            jogo = JogoSemis.remove(0);
        } else {
            jogo = JogoFinal.remove(0);
        }
        
        // atualiza o resultado do jogo
        jogo.placar = placar;
        
        // determina qual equipe avançou para a próxima fase
        String vencedor = null;
        if (placar[0] > placar[1]) {
            vencedor = jogo.equipe1;
        } else if (placar[1] > placar[0]) {
            vencedor = jogo.equipe2;
        } else {
            vencedor = 'Empate! Escolha a equipe vencedora';
        }
        
        // adiciona a equipe vencedora na próxima fase
        Jogo proximoJogo = new Jogo(vencedor, null);
        if (fase == 'Jogo Oitavas') {
            JogoQuartas.add(proximoJogo);
        } else if (fase == 'Jogo Quartas') {
            JogoSemis.add(proximoJogo);
        } else if (fase == 'Jogo Semis') {
            JogoFinal.add(proximoJogo);
        } else {
            System.debug('Fim da competição! O vencedor é: ' + vencedor);
        }
    }
}