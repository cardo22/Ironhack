require "sinatra"

get "/add" do 
	erb(:add)
end

post "/calculator_add" do
	@first = params[:first_number].to_f
  @second = params[:second_number].to_f
  @result = fisrt + second
  "#{first} + #{second} = #{result}"
  Params data: {"first_number"=>"21", "second_number"=>"21"}
  erb(:add)
end
