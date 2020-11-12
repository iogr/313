#Lesson152
require_relative "lib/film"

file_names = "#{__dir__}/data/films"
files = Dir[File.join(file_names, "*.txt")]

films =
  files.map { |file| Film.new(*File.readlines(file, chomp: true)) }

directors =
  films.map { |film| film.director}
    .uniq
    .sort

puts "Программа «Фильм на вечер»:\n
Фильм какого режиссера вы хотите сегодня посмотреть?"

directors.each.with_index(1) do |director, i|
  puts "#{i}. #{director}"
end

user_choice = ""
until (1..directors.size).include?(user_choice)
  user_choice = STDIN.gets.to_i
end

selected_director = directors[user_choice -1]
selected_films  = []

films.each do |film|
  selected_films << film if film.director == selected_director
end

puts "И сегодня вечером рекомендую посмотреть:"
puts selected_films.sample
