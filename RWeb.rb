
require 'socket'

class RWeb
  attr_accessor :IPAddress, :Port
  attr :Server

  def initialize(ip_address, port)
    self.IPAddress = ip_address
    self.Port = port

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
