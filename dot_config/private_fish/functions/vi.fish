function vi --wraps=vi
    if type -q lvim
        lvim $argv
    end
end