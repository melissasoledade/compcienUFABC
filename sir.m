function r = sir(x,t)
  % Função que retorna resultado das equações do modelo SIR.
  % Autora: Melissa Gabriela Soledade - RA: 11072216; Data de criação: 2020-11-25
  % Entrada: x (vetor x0, sendo os parâmetros iniciais S, I e R); t (sendo uma grade de tempo em dias)
  % Saída: r, (vetor com o resultado das equações do modelo SIR, ds, dy, dr)
  % Comentários: as taxas de infecção/cura foram baseadas em um estudo que comparou a propagação da covid em Lombardia-Itália e São Paulo-Brasil
  
  
  
  #taxa de infecção beta e taxa de cura gama de acordo com os estudos Lombardia x São Paulo
  #taxa de infecção sem considerar parâmetros de isolamento social da época
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
