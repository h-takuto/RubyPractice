require 'socket'

host = if ARGV[0] then ARGV[0] else 'localhost' end
port = if ARGV[1] then ARGV[1] else 'echo' end
sock = TCPSocket.open(host,port)

while msg = STDIN.gets
    print("you writed:", msg)
    sock.write(msg)
    print("return message:", sock.gets)
end
sock.close
