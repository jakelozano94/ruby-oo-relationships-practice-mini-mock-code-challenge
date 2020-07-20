require 'pry'
require_relative './book'
require_relative './author'
require_relative './bookauthor'

greg = Author.new("greg")
mike = Author.new ("mike")
steve = Author.new("steve")
jorge = Author.new("jorge")
mandy = Author.new("mandy")

time = Book.new("time", 2300)
red = Book.new("red", 120)
green = Book.new("green", 309)
beyond = Book.new("beyond", 300)
fore = Book.new("fore", 13432)

pair1 = BookAuthor.new(time, greg)
pair2 = BookAuthor.new(time, mandy)
pair3 = BookAuthor.new(time, steve)
pair4 = BookAuthor.new(red, jorge)
pair5 = BookAuthor.new(beyond, steve)
pair6 = BookAuthor.new(fore, mandy)
pair7 = BookAuthor.new(green, mike)
pair8 = BookAuthor.new(green, steve)

binding.pry


"last time"


