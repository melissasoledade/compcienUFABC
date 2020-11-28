function r = sir(x,t)
  % Fun��o que retorna resultado das equa��es do modelo SIR.
  % Autora: Melissa Gabriela Soledade - RA: 11072216; Data de cria��o: 2020-11-25
  % Entrada: x (vetor x0, sendo os par�metros iniciais S, I e R); t (sendo uma grade de tempo em dias)
  % Sa�da: r, (vetor com o resultado das equa��es do modelo SIR, ds, dy, dr)
  % Coment�rios: as taxas de infec��o/cura foram baseadas em um estudo que comparou a propaga��o da covid em Lombardia-It�lia e S�o Paulo-Brasil
  
  
  
  #taxa de infec��o beta e taxa de cura gama de acordo com os estudos Lombardia x S�o Paulo
  #taxa de infec��o sem considerar par�metros de isolamento social da �poca
  beta = 0.555397; 
  gama = 1/7; 
  
  s = x(1);
  y = x(2);
  r = x(3);
  
  ds = -beta*s*y;
  dy = beta*s*y - (gama*y);
  dr = gama*y;
  
  r = [ds, dy, dr];
  
endfunction
