function a = chama_sir()
  % Fun��o que calcula a EDO do modelo SIRxtempo e faz plot de gr�fico com as informa��es
  % Autora: Melissa Gabriela Soledade - RA: 11072216; Data de cria��o: 2020-11-25
  % Entrada: void
  % Sa�da: void
  % Coment�rios: o primeiro gr�fico refere-se ao estado de S�o Paulo e o segundo da regi�o de Lombardia-It�lia.
  % Para a integra��o da EDO, usou-se um per�odo de 100 dias. I0 baseia-se no estudo de Lombardia x S�o Paulo.
  
  pkg load statistics;
  
  ################## Primeiro gr�fico: estado de S�o Paulo - Brasil ##################
  N = 46000000; #popula��o do estado de SP
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
  ylabel("Popula��o","fontweight","bold")
  h = legend("S","I","R");
  legend(h,"show")

  ################## Segundo gr�fico: estado de Lombardia - It�lia ##################
  N = 10060000; #popula��o Lombardia
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
  ylabel("Popula��o","fontweight","bold")
  h = legend("S","I","R");
  legend(h,"show")
  
endfunction
