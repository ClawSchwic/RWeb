
require 'socket'

class RWeb
  attr_accessor :IPAddress, :Port
  attr :Server, :Connections

  def initialize(ip_address, port, connections)
    self.IPAddress = ip_address
    self.Port = port
    
    @Connections = connections

    @Server = TCPServer.new(ip_address, port)
  end

  def Send(data)
    
  end

  def Receive()
    
  end

  def Close()
    self.Server.close
  end
end
