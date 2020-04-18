# Load the service and message definitions
require "./protobufs/hello_world_services.pb"
require "./protobufs/hello_world.pb"

HelloWorldService = HelloWorld::Stub.new("localhost", 50000)

pp "START"
a=0
while (a += 1) < 10000
    HelloWorldService.method_name(TheRequest.new(text: "foo"))
end
pp "STOP"

# from anywhere in your app
pp HelloWorldService.method_name(TheRequest.new(text: "foo"))
# => TheResponse(@data="Hello foo")