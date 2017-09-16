module ParseJsonBody
  def json
    JSON.parse(body)
  end
end

ActionDispatch::TestResponse.send(:include, ParseJsonBody)
