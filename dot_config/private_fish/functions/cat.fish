function cat --wraps cat
    if type -q bat
        bat $argv
    end
end