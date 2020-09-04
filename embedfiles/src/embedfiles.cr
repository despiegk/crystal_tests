require "http/server"
require "rucksack"

server = HTTP::Server.new do |context|
  path = context.request.path
  path = "/index.html" if path == "/"
  path = "./webroot#{path}"

  begin
    # Here we read the requested file from the Rucksack
    # and write it to the HTTP response. By default Rucksack
    # falls back to direct filesystem access in case the
    # executable has no Rucksack attached.
    rucksack(path).read(context.response.output)
  rescue Rucksack::FileNotFound
    context.response.status = HTTP::Status.new(404)
    context.response.print "404 not found :("
  end
end

address = server.bind_tcp 8080
puts "Listening on http://#{address}"
server.listen

# Here we statically reference the files to be included
# once - otherwise Rucksack wouldn't know what to pack.
{% for name in `find ./webroot -type f`.split('\n') %}
  rucksack({{name}})
{% end %}
