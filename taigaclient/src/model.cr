

#TODO: put the class model here

class Project
    def initialize(name : String)
      @name = name
      @id = 0
    end
  end

class Story
  def initialize(name : String)
    @name = name
    @id = 0
  end
end

class AuthResponse
  JSON.mapping(
    auth_token: String
  )
end