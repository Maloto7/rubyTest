
Given(/^When try to fid a item with the status of "([^"]*)"$/) do |status|
  @response = HTTParty.get("http://petstore.swagger.io/v2/pet/findByStatus?status=#{status}")
end

When(/^it should return a response with a (\d+) response code$/) do |code|
  expect(@response.code).to eql(code.to_i)
end

Then(/^it's body must contain the value "([^"]*)" within the "([^"]*)"$/) do |item, expected|
  @resp = @response[0]["name"].to_s
  # puts @response["items"]["value"]
  expect( @resp ).to eql(expected)
end