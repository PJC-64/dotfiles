function nx --wraps=nvr
    set -g nvr_server (nvr --serverlist)
        nvr --servername $nvr_server $argv
end

