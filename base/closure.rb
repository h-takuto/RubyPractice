#!/usr/bin/env ruby

def increase
  n = 0
  -> { n += 5 }
end

prefix = "@"
["a", "b", "c"].each do |s|
  puts prefix + s
end


3.times { p increase.call }

puts "================"

increase_proc = increase
3.times { p increase_proc.call }
