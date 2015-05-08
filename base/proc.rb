procedure1 = Proc.new { |word| puts word }
procedure2 = proc { |word| puts word }
procedure3 = lambda { |word| puts word }
procedure4 = -> (word) { puts word }
procedure5 = -> { puts "cluck" }

# proc
def hoge
  procedure = Proc.new { return "return from Proc.new" }
  procedure.call
  return "return form hoge"
end

# lambda
def fuga
  procedure = -> { return "return from lambda" }
  procedure.call
  return "return from fuga"
end

puts hoge
puts fuga

procedure1.call ("meow")
procedure2.call("quack")
procedure3.call("oink")
procedure4.call("bowwow")
procedure5.call
