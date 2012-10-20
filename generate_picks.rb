#!/usr/bin/env ruby
require_relative "picker_pickem_pickash"
include PickerPickemPickash

puts "How many games are you picking?"
begin
  games = gets.chomp.strip.to_i
  games.times do |i|
    puts generate_pick(i)
  end
rescue
  puts "Idiot."
ensure
  puts "Idiot."
end
