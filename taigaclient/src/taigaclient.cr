require "crest"
require "json"
require "./model"

module Taigaclient
  VERSION = "0.1.0"

  # TODO: https://taigaio.github.io/taiga-doc/dist/api.html#auth-normal-login
  # TODO: login using crest, to our circles tool  
  # TODO: fetch projects
  # TODO: fetch stories
  # TODO: put them in nice data objects in memory

  resp = Crest.post(
    "https://staging.circles.threefold.me/api/v1/auth",
    form: {:username => "admin", :password => "123123", :type => "normal"}.to_json,
    headers: {"Content-Type" => "application/json"}
    )

  puts(resp.status_code)
  AuthResponse.from_json(resp.body)
  puts(resp.body)
end





