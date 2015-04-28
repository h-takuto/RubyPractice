require 'socket'

port = if ARGV[0] then ARGV[0] else 'echo' end
gate = TCPServer.open(port)

sock = gate.accept
gate.close
while msg = sock.gets
    ms = STDIN.gets
    print("you get:", msg)
    sock.write(ms)
end
sock.close
