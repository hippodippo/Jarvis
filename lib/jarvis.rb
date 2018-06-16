# Copyright (C) 2018 Kaycee Ingram <IngramKaycee@gmail.com>
#
# Jarvis is freely distributable under the terms of an MIT-style license.
# See MIT-LICENSE or https://opensource.org/licenses/MIT.

# Require Brain.
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