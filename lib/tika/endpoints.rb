require "net/http"

module Tika
  module Endpoints

    PUT = Net::HTTP::Put
    GET = Net::HTTP::Get
    
    Endpoint = Struct.new(:request_method, :path)

    GetTextEndpoint       = Endpoint.new(PUT, "/tika")
    GetMetadataEndpoint   = Endpoint.new(PUT, "/meta")
    GetVersionEndpoint    = Endpoint.new(GET, "/version")
    GetMimeTypesEndpoint  = Endpoint.new(GET, "/mime-types")
    GetParsersEndpoint    = Endpoint.new(GET, "/parsers")

  end
end
