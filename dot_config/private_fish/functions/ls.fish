function ls --wraps=ls
    if type -q exa
        exa $argv
    end
end

