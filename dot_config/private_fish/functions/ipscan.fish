#!/home/linuxbrew/.linuxbrew/bin/fish
function ipscan
  for netnum in 1 2 68
  	for num in (seq 255)
  		ping -W 0.05 -c 1 192.168.$netnum.$num | grep "bytes from"
  	end
  end
end
