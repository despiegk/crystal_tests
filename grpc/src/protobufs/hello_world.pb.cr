## Generated from hello_world.proto
require "protobuf"


struct TheRequest
  include Protobuf::Message
  
  contract_of "proto3" do
    optional :text, :string, 1
  end
end

struct ResultA
  include Protobuf::Message
  
  contract_of "proto3" do
    optional :text, :string, 1
    optional :nr, :int32, 2
  end
end

struct SearchRequest
  include Protobuf::Message
  enum Corpus
    UNIVERSAL = 0
    WEB = 1
    IMAGES = 2
    LOCAL = 3
    NEWS = 4
    PRODUCTS = 5
    VIDEO = 6
  end
  
  contract_of "proto3" do
    optional :query, :string, 1
    optional :page_number, :int32, 2
    optional :result_per_page, :int32, 3
    optional :corpus, SearchRequest::Corpus, 4
    repeated :results, ResultA, 5
  end
end

struct TheResponse
  include Protobuf::Message
  
  contract_of "proto3" do
    optional :data, :string, 1
    repeated :results, SearchRequest, 2
  end
end
