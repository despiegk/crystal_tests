# TODO: Write documentation for `Test`
# require "http/server"
require "crest"

module Test
  VERSION = "0.1.0"

  

  x = Crest.get(
    "http://httpbin.org/get",
    params: {:lang => "en"}
  )




  # server = HTTP::Server.new do |context|
  #   context.response.content_type = "text/plain"
  #   context.response.print "Hello world! The time is #{Time.local}"
  # end

  # address = server.bind_tcp 8080
  # puts "Listening on http://#{address}"
  # server.listen

end
