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

  auth_resp = AuthResponse.from_json(resp.body)
  auth_token = auth_resp.auth_token



  resp = Crest.get(
    "https://staging.circles.threefold.me/api/v1/projects",
    headers: {"Content-Type" => "application/json", "Authorization" => "Bearer #{auth_token}"}
    )


  projects = Array(Project).from_json(resp.body)

  resp = Crest.get(
    "https://staging.circles.threefold.me/api/v1/userstories",
    headers: {"Content-Type" => "application/json", "Authorization" => "Bearer #{auth_token}"}
    )


  stories = Array(Story).from_json(resp.body)

  puts(projects[1].name)
  puts(stories[1].project)




end





