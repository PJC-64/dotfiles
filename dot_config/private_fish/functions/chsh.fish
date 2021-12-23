function chsh --wraps=chpass --description 'alias chsh chpass'
  chpass $argv; 
end
