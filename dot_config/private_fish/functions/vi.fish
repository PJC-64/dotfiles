function vi --wraps=vi
    if type -q nvim
        nvim $argv
    end
end
