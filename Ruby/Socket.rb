require 'socket'

TIMEOUT = 2

def scan_port(port)
  socket      = Socket.new(:INET, :STREAM)
  remote_addr = Socket.sockaddr_in(port, 'www.example.com')

  begin
    socket.connect_nonblock(remote_addr)
  rescue Errno::EINPROGRESS
  end

  _, sockets, _ = IO.select(nil, [socket], nil, TIMEOUT)

  if sockets
    p "Port #{port} is open"
  else
    # Port is closed
  end
end

PORT_LIST = [21,22,23,25,53,80,443,3306,8080]
threads   = []

PORT_LIST.each { |i| threads << Thread.new { scan_port(i) } }

threads.each(&:join)
