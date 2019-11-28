
Given(/^create a new item with the status of "([^"]*)" and the name of "([^"]*)" with the id "([^"]*)"$/) do |status, name, id|
  options =
      {
          :id => "#{id}",
          :category => {
              :id => 0,
              :name => "name"
          },
          :name => "#{name}",
          :photoUrls => [
              "photoUrls"
          ],
          :tags => [
              {
                  :id => 0,
                  :name => "tagName"
              }
          ],
          :status => "#{status}"
      }

  puts(options)
  @response = HTTParty.post("http://petstore.swagger.io/v2/pet", :body => options.to_json, :headers => { 'Content-Type' => 'application/json' } )

end

When(/^post it should return a response with a (\d+)$/) do |code|
  expect(@response.code).to eql(code.to_i)
end
