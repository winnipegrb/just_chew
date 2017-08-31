ActionDispatch::TestResponse.class_eval do
  def json
    JSON.parse(body)
  end
end
