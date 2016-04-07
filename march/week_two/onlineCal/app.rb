require "sinatra"
require "sinatra/reloader" if development?
require_relative "lib/operation.rb"
calc = Calculator.new

get "/home" do
  erb(:calculator)
end

post "/calculate" do
  @params = params
  a = params[:first_number].to_f
  b = params[:second_number].to_f
  @answer = calc.send params[:method], a, b 
  @sign = calc.sign(params[:method])
  erb(:calculator)
end