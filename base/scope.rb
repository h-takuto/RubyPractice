#!/usr/bin/env ruby

class Japan
  def initialize(primeminister)
    @primeminister = primeminister
  end
  def people_saying
    puts "消費税を上げないで、#{@primeminister}!"
  end
end

class UK
  primeminister = 'David Camelon'
  def people_saying
    puts "消費税を上げないで、#{primeminister}!"
  end
end

class USA
  @@primeminister = 'Barack Obama'
  def people_saying
    puts @@primeminister + "Yes We Can"
  end
end

japan = Japan.new('Shinzo Abe')
japan.people_saying
usa = USA.new
usa.people_saying
uk = UK.new
uk.people_saying
