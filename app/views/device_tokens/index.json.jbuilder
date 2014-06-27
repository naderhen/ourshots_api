json.array!(@device_tokens) do |device_token|
  json.extract! device_token, :id
  json.url device_token_url(device_token, format: :json)
end
