require 'think.rb'

class Brain
  def initialize
    @memory = []
  end

  def listen(input)
    @memory.push(input) # store into short-term memory.

    # Think.process(input)

    if (input == 'hello')
      puts 'Hello!'
    else
      puts 'What?'
    end
  end

  def remember
    # Store conversation into long-term memory
    File.open('./memory.yml', 'w') do |file|
      file.write(input)
    end
  end
end