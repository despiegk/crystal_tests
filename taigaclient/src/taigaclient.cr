require "crest"

module Taigaclient
  VERSION = "0.1.0"

  # see https://github.com/mamantoha/crest


  # TODO: https://taigaio.github.io/taiga-doc/dist/api.html#auth-normal-login
  # TODO: login using crest, to our circles tool
  # TODO: fetch projects
  # TODO: fetch stories
  # TODO: put them in nice data objects in memory

  # do it efficient

  x = Crest.get(
    "http://httpbin.org/anything",
    params: {:lang => "en"}
  )

  puts x

end





