require 'sinatra'
require 'sinatra/reloader'
require_relative "lib/passwordCheck.rb"

credencial = Password_checker.new

enable :sessions

get "/home" do
	erb(:home)
end


post "/log_in" do 
	@user = params[:username]
	@pass = params[:special_password]
	if credencial.check_password(@user, @pass)
		redirect to("/congrats")
	else
		redirect to("/home")
	end

end

get "/congrats" do 
	erb(:congrats)
end

get "/log_in" do 
	redirect to("/home")
end