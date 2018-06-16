# Require emotions.
require_relative './angry.rb'
require_relative './happy.rb'
require_relative './sad.rb'

class Think
  class << self
    def process(input)
      if (input == 'hello')
        puts 'Hello!'
      else
        puts 'I do not understand. Can you explain it to me?'
      end
    end
  end
end