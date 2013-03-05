class API < Grape::API
  format :json

  mount API_v1
end