#!/usr/bin/env ruby

def bqqbs(i)
  case i + 1
  when 1
    "st"
  when 2
    "nd"
  when 3
    "rd"
  else
    "th"
  end
end

puts "How many games are you picking?"
begin
  games = gets.chomp.strip.to_i
  games.times do |i|
    puts "For the #{i+1}#{bqqbs(i)} game, pick the team on the #{rand(2) == 0 ? "left" : "right"}"
  end
rescue
  puts "Idiot."
ensure
  puts "Idiot."
end
