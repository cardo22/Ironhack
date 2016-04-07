require "sinatra"
require "sinatra/reloader" if development?

enable(:sessions)

credentials = {
	"Ricardo" = "jumpman"
	"Karin" = "ironhack"
}