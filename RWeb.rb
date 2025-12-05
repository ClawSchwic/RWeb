
require 'socket'

class RWeb
  attr_accessor :IPAddress, :Port, :Server
  
  def initialize(ip_address, port)
    self.IPAddress = ip_address
    self.Port = port

    self.Server = TCPServer.new(ip_address, port)
  end

  def Close()
    self.Server.close
  end
end
