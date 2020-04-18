## Generated from hello_world.proto
require "grpc/service"

abstract class HelloWorld
  include GRPC::Service

  @@service_name = "HelloWorld"

  rpc MethodName, receives: TheRequest, returns: TheResponse
end
