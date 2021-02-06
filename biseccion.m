clear all
clear
clc

LimI = 0;
LimS = 100;
numIteracion = 1;

aprox = '';
F_LimI = '';
F_LimA = '';
verificadorSigno = '';

display('I | LimI | LimS | Aprox | F(LimI) | F(Aprox)')

do
  aprox = (LimI + LimS) / 2;
  
  F_LimI = fn(LimI);
  F_limA = fn(aprox);
  
  fprintf(numIteracion, LimI, LimS, aprox, F(LimI), F(aprox))
  
  verificadorSigno = F_LimI * F_LimA;
  
  if (verificadorSigno < 0)
    LimS = aprox;
  else
    LimI = aprox;
  endif
  
  numIteracion++;
  
  i++;
  
until (F_limA > 0.01 || F_LimA < -0.01);

## Función en línea
function val = res(i)
  fn = -100 + (160 / (1 + i)) + (165 / (1 + i)^2);
endfunction
TIR = aproximacion * 100;

fprintf(mat2str(TIR));


