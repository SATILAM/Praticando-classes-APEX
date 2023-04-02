# Praticando-classes-APEX

Esse é um programa para controle do placar de uma Copa do Mundo de futebol (2018). 
O programa deve ler e armazenar os resultados, além de montar os jogos a partir das oitavas-de-final.

//OPEN EXECUTE ANONYMOUS WINDOW (SALESFORCE)// 

CopaDoMundo copa = new CopaDoMundo('Brasil','Argentina');

//ADICIONA ALGUNS JOGOS PARA AS FASES SEGUINTES//

Jogo oitavas1 = new Jogo('Alemanha','França');
Jogo oitavas2 = new Jogo('Inglaterra','Itália');
copa.JogoOitavas.add(oitavas1);
copa.JogoOitavas.add(oitavas2);

//ATUALIZA O PLACAR DO PRIMEIRO JOGO DAS OITAVAS DE FINAL//

Decimal[] placar = new Decimal[]{2, 1};
copa.atualizarPlacar('Alemanha', 'França', placar, 'Jogo Oitavas');

//VERIFICA SE A EQUIPE VENCEDORA FOI ADICIONADA À PRÓXIMA FASE//

System.debug('O campeão do Mundo em 2018 foi: ' + copa.JogoQuartas[0].equipe1); /*DEVE IMPRIMIR "ALEMANHA"*/

//EXPLICAÇÃO//

Esse código modela uma competição de futebol simples e pode ser útil para entender os conceitos de herança e polimorfismo em programação orientada a objetos. 
É importante notar que esse código pode ser expandido para incluir outras funcionalidades, como a validação do placar e a geração automática dos próximos jogos, 
por exemplo.
