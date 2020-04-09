

#TODO: put the class model here

class Project
  JSON.mapping(
    name: String
  )
  end

class Story
  JSON.mapping(
    project: Int32
  )
end

class AuthResponse
  JSON.mapping(
    auth_token: String
  )
end