require("sinatra")
require("sinatra/reloader")

get("/") do
  @friend = "kha"
  erb(:letter)

end

get("/australia") do
  @friend = "eric"
  erb(:australia)
end

get('/story') do
  @person1 = params.fetch('person1')
  @person2 = params.fetch('person2')
  @animal = params.fetch('animal')
  @exclamation = params.fetch('exclamation')
  @verb = params.fetch('verb')
  @noun = params.fetch('noun')
  erb(:story)
end

get("/form") do
  erb(:form)
end  
