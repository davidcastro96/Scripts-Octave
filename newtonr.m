% Funció para calcular la raíz con el método Newton-Raphson.
function newtonr
  
  clear
  clc
  display('Método de Newton-Raphson')
  
  %-----------------------%
  % Registro de variables %
  %-----------------------%
  xi = 0.0; % Valor x_i
  error = 0.01; % Error
  i = 1; % Iteración iniciada en 1
  cant = 3;

  % Función error aproximado
  function ea = erroraprox(xa,xp)
    ea = abs(((xa-xp)/xa)*100);
  endfunction
  

  
  %Función definida
  function[fun]=fn(x)
  fun = -100 + (160 / (1 + x)) + (165 / (1 + x)^2);
  return
  endfunction

  %Derivada de la función definida
  function[dr]=der(x)
  dr = -(160)/((1+x)^2) - (330)/((1+x)^3);
  return
  endfunction
  
  if (der(xi) == 0)
    fprintf("No se puede hallar una raíz");
  else
  
    xn = xi-(fn(xi)/der(xi));
    fprintf("%s\t\t %s\t\t %s\n","i","xn","ea");
    fprintf("————————————————————————————————————————————\n");
    
    while i <= cant
      fprintf("%.0f\t\t",i);
      fprintf("%.8f\t",xn);
      fprintf("%.8f\t",erroraprox(xn,xi));
      fprintf("\n");
      xi = xn;
      xn = xi-(fn(xi)/der(xi));
      i++;
    endwhile
  endif

  fprintf("%.0f\t\t",i);
  fprintf("%.8f\t",xn);
  fprintf("%.8f\t",erroraprox(xn,xi));
  fprintf("\n");

  fprintf("\nLa raíz aproximada es : %.3f\n",xn);
  
endfunction