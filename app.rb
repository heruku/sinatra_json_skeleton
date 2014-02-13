get '/' do
  content_type :json

  Message.all.to_json
end