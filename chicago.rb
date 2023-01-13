require "http"

response = HTTP.get("")

response.parse(:json)
