require "crest"

module Taigaclient
  VERSION = "0.1.0"

  # TODO: https://taigaio.github.io/taiga-doc/dist/api.html#auth-normal-login
  # TODO: login using crest, to our circles tool
  # TODO: fetch projects
  # TODO: fetch stories
  # TODO: put them in nice data objects in memory

  x = Crest.get(
    "http://httpbin.org/get",
    params: {:lang => "en"}
  )

end





