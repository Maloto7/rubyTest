

Given(/^When I want to delete a pet tha has the id "([^"]*)"$/) do |id|
  @response = HTTParty.delete("http://petstore.swagger.io/v2/pet/#{id}")
end

  When(/^it should return a response with a (\d+)$/) do |code|
    expect(@response.code).to eql(code.to_i)
  end


