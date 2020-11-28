function a = chama_sir()
  % Função que calcula a EDO do modelo SIRxtempo e faz plot de gráfico com as informações
  % Autora: Melissa Gabriela Soledade - RA: 11072216; Data de criação: 2020-11-25
  % Entrada: void
  % Saída: void
  % Comentários: o primeiro gráfico refere-se ao estado de São Paulo e o segundo da região de Lombardia-Itália.
  % Para a integração da EDO, usou-se um período de 100 dias. I0 baseia-se no estudo de Lombardia x São Paulo.
  
  pkg load statistics;
  
  ################## Primeiro gráfico: estado de São Paulo - Brasil ##################
  N = 46000000; #população do estado de SP
  I0 = 0.0000036;
  R0 = 0;
  S0 = 1;  
  
  t = linspace(0, 100, 100);
  x0 = [S0, I0, R0];
  x = lsode("sir", x0, t); #lsode resolve EDO de valores do SIR x tempo
  
  subplot(1,2,1)
  plot(t,x(:,1),"-r",t,x(:,2),"-g",t,x(:,3),"-b")
  xlim([0 100]) 
  xlabel("Tempo","fontweight","bold")
  ylabel("População","fontweight","bold")
  h = legend("S","I","R");
  legend(h,"show")

  ################## Segundo gráfico: estado de Lombardia - Itália ##################
  N = 10060000; #população Lombardia
  I0 = 0.0000166;
  R0 = 0;
  S0 = 1;
  
  t = linspace(0, 100, 100);
  x0 = [S0, I0, R0];
  x = lsode("sir", x0, t);
  
  subplot(1,2,2)
  plot(t,x(:,1),"-r",t,x(:,2),"-g",t,x(:,3),"-b")
  xlim([0 100]) 
  xlabel("Tempo","fontweight","bold")
  ylabel("População","fontweight","bold")
  h = legend("S","I","R");
  legend(h,"show")
  
endfunction
