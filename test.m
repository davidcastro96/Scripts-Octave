clc;
fprintf ("***METODO DE NEWTON RAPSHON***\n");

#tambien se puede utilizar   f  = input("escribe la funcion", "s")
f='-(5(20*x^2+8-45))/(1+x)^2';
f = inline(f);

d='-(32*x+98)/((1+x)^3)';
d = inline(d);

xi=0.0;

cantidad = 3;

erro=0.1;

i=1;
#funcion que retorna el error aproximado
function ea = errora(xa, xp)
    ea = abs(((xa - xp)/xa)*100);
end

if d(xi) == 0
     fprintf ('no se puede hallar una raiz');

     else
          
          xn= xi-(f(xi)/d(xi));
          fprintf ("____________________________________________\n");
          fprintf("%s\t\t %s\t\t  %s\n",'I','XN','|EA|  ');
          fprintf ("____________________________________________\n");

          while i <= cantidad
                fprintf('%.0f\t\t',i);
                fprintf('%.8f\t',xn);
                fprintf('%.8f\t',errora(xn,xi));
                fprintf ("\n");
                xi=xn;
                xn= xi-(f(xi)/d(xi));
                i++;

          endwhile
          
                fprintf('%.0f\t\t',i);
                fprintf('%.8f\t',xn);
                fprintf('%.8f\t',errora(xn, xi));
                fprintf ("\n");
              
                fprintf ("____________________________________________\n");
                fprintf('\nLA RAIZ APROXIMADA ES:  %.8f\n', xn);
            
endif