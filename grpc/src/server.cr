require "./protobufs/hello_world_services.pb"
require "./protobufs/hello_world.pb"


VERSION = "0.1.0"


class HelloWorldHandler < HelloWorld
  # You can define your own initialize method to inject dependencies

  def method_name(request : TheRequest) : TheResponse
    o=TheResponse.new()
    o.data = "Hello #{request.text}"
    #TODO: how do I populate the info here?
    l=o.results
    pp l
    o
  end
end

require "grpc"
grpc = GRPC::Server.new
grpc << HelloWorldHandler.new

require "grpc/http2"
server = HTTP2::ClearTextServer.new([grpc]) # TLS isn't supported yet
pp "listen:localhost:50000"
server.listen "0.0.0.0", 50000  


