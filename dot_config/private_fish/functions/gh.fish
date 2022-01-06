function gh --wraps gh
  if test (uname) = Darwin and type -q /opt/homebrew/bin/gh
    /opt/homebrew/bin/gh $argv
  end
end
