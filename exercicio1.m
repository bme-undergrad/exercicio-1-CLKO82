function t = exercicio1(func, x0)

  % nao alterar: inicio
  es = 1;        
  imax = 20;     
  % nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  t_raizes = zeros(imax,1);   
  erro = zeros(imax,1);      
  
  t_raizes(1) = x0;

  for ii = 1:imax-1
      
      [f_val, f_der] = func(t_raizes(ii));

      
      t_raizes(ii+1) = t_raizes(ii) - f_val / f_der;

      
      erro(ii+1) = abs((t_raizes(ii+1) - t_raizes(ii)) / t_raizes(ii+1)) * 100;

      
      if erro(ii+1) < es
          break;
      end
  endfor

  
  t = t_raizes(ii+1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
endfunction
