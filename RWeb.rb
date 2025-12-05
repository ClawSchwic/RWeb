
require 'socket'

HTTP_Request  = [ "COMMENT", "DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT", "TRACE" ]
HTTP_Responce = [ "100 Continue", "101 Switching Protocols", "103 Early Hints", "200 OK", "201 Created", "202 Accepted", "203 Non-Authoritative Information",
                  "204 No Content", "205 Reset Content", "205 Reset Content", "206 Partial Content", "207 Multi-Status", "208 Already Reported", "226 IM Used",
                  "300 Multiple Choices", "301 Moved Permanently", "302 Found", "303 Set Other", "304 Not Modified", "307 Temporary Redirect",
                  "308 Permanent Redirect", "400 Bad Request", "401 Unauthorized", "402 Payment Required", "403 Forbidden", "404 Not Found",
                  "405 Method Not Allowed", "406 Not Acceptable", "407 Proxy Authentication Required", "408 Request Timeout", "409 Conflict", "410 Gone",
                  "411 Length Required", "412 Precondition Failed", "413 Content Too Large", "414 URI Too Long", "415 Unsupported Media Type",
                  "416 Range Not Satisfiable", "417 Expectation Failed", "418 I'm a teapot", "421 Misdirected Request", "422 Unprocessable Content",
                  "423 Locked", "424 Failed Dependency" , "425 Too Early", "426 Upgrade Required", "428 Precondition Required", "429 Too Many Requests",
                  "431 Request Header Fields Too Large", "451 Unavailable For Legal Reasons". "500 Internal Server Error", "501 Not Implemented", "502 Bad Gateway",
                  "503 Service Unavailable", "504 Gateway Timeout", "505 HTTP Version Not Supported", "506 Variant Also Negotiates", "507 Insufficient Storage",
                  "508 Loop Detected", "510 Not Extended", "511 Network Authentication Required" ]
HTTP_Header   = [ "Accept", "Accept-CH", "Accept-Encoding", "Accept-Langauge", "Accept-Patch", "Accept-Post", "Accept-Ranges",

                  "Access-Control-Allow-Credentials", "Access-Control-Allow-Headers", "Access-Control-Methods", "Access-Control-Origin",
                  "Access-Control-Expose-Headers", "Access-Control-Max-Age", "Access-Control-Control-Request-Headers", "Access-Control-Request-Mehtod",
                
                  "Age", "Allow", "Alt-Svc", "Alt-Used", "Authorization", "Cache-Control", "Clear-Site-Data", "Connection", "Content-Digest", "Content-Disposition",
              
                  "Content-Encoding", "Content-Language", "Content-Length", "Content-Location", "Content-Range", "Content-Security-Policy", "Content-Security-Policy-Report-Only",
                  "Content-Type",
              
                  "Cookie", "Critical-CH",
              
                  "Cross-Origin-Embedded-Policy", "Cross-Origin-Opener-Policy", "Cross-Origin-Resource-Policy",
              
                  "Date", "Device-Memory", "Expires", "Forwarded", "From", "Host",
                
                  "If-Match", "If-Modified-Since", "If-None-Match", "If-Range", "If-Unmodified-Since",
              
                  "Integrity-Policy", "Integrity-Policy-Report-Only",
              
                  "Keep-Alive", "Last-Modified", "Link", "Location", "Max-Forwards", "Origin", "Origin-Agent-Cluster", "Prefer", "Preference-Applied", "Priority",
                  "Proxy-Authenticate", "Proxy-Authorization", "Range", "Referred-Policy", "Refresh", "Reporting-Endpoints", "Repr-Digest", "Retry-After",
                  "Sec-Fetch-Dest", "Sec-Fetch-Mode", "Sec-Fetch-Site", "Sec-WebSocket-Accept", "Sec-WebSocket-Extension", "Sec-WebSocket-Protocol", "Sec-WebSocket-Version",
                
                  "Server", "Server-Timing", "Service-Worker", "Service-Worker-Allowed", "Service-Worker-Navigation-Preload", "Set-Cookie", "Set-Login",
                  "SourceMap", "Strict-Transport-Security", "TE", "Timing-Allow-Origin", "Trailer", "Transfer-Encoding", "Upgrade", "Upgrade-Insecure-Requests",
                  "User-Agent", "Vary", "Vary", "Via", "Want-Content-Digent", "Want-Repr-Digest", "WWW-Authenticate", "X-Content-Type-Options" ]

class RWebTCP
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
