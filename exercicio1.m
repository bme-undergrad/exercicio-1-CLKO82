function t = exercicio01(func,func_d,x0)

% nao alterar: inicio
es = 1;
imax = 20;
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%%%

t_raizes = zeros(imax,1);
t_raizes(1)  = x0;

for ii = 1:length(t_raizes)-1
    if ii ~= 1
        erro(ii) = abs((t_raizes(ii) - t_raizes(ii-1))/t_raizes(ii))
        if erro(ii) < es
            break
        endif
    endif
        t_raizes(ii+1) = t_raizes(ii) - func(t_raizes(ii))/func_d(t_raizes(ii));    
    
    
endfor
t = t_raizes(ii);
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
endfunction
