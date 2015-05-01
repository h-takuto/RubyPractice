#!/usr/bin/env ruby

def my_func
  puts "hello"
end

def my_func2(name="nanasi")
  puts "hello, " + name.to_s
end

def versus(east="east",west="west")
  puts east.to_s + " vs " + west.to_s
end

def sum(*args)
  puts args.class
  args.inject(:+)
end




p sum(1,2,3,4,5,6,7,8,9,10)
my_func()
my_func2("ABC")
versus("red","white")


