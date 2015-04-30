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

my_func()
my_func2("ABC")
versus("red","white")


