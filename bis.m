function bis

  clear
  clc
  display('Método de bisección')
  
  LimI = 0;
  LimS = 100;
  numIteracion = 1;

  display('    |   I   |  LimI  |   LimS   |  Aprox  | F(LimI) | F(Aprox) | ')

  do
    aprox = (LimI + LimS) / 2;   %50
    fLimI = bise(LimI);  % 255 si LimI = 0
    fLimA = bise(aprox);  % -96.799 si aprox = 50
    
    fprintf('    |\t%i   |  %3.3f | %3.3f  |  %3.3f | %3.3f | %3.3f  |\n',numIteracion, LimI, LimS, aprox, fLimI, fLimA)
    verificadorSigno = fLimI*fLimA; % verificadorSigno = -2.4684

    if (verificadorSigno < 0)
    LimS = aprox;
    else
      LimI = aprox;
    endif
  
    numIteracion++;
    
  until(numIteracion == 19)
  
  tir = aprox * 100;
  
  fprintf('\nEl TIR es de : %3.1f\n',tir);
  
  function[res]=bise(i)
  res = -100 + (160 / (1 + i)) + (165 / (1 + i)^2);
  return
  endfunction

endfunction