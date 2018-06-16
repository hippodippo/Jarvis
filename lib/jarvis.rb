require_relative './jarvis/brain.rb'

module Jarvis
  class << self
    def wakeup
      brain = Brain.new

      while (true)
        input = gets.chomp.downcase # Convert input to lowercase.

        if (input == 'bye')
          # Remember conversation for future conversations and learning.
          brain.remember()
          break
        end

        brain.listen(input)
      end
    end
  end
end

# Wake up.
Jarvis.wakeup()