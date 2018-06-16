require 'yaml'
require_relative './think.rb'

class Brain
  def initialize
    @memory = []
  end

  def listen(input)
    @memory.push(input) # store into short-term memory.

    Think.process(input)
  end

  def remember
    # If there is already data in the file. (Do not overwrite it)
    if (File.read('./memory.yml'))
      @memory.concat YAML.load_file('./memory.yml') # Load and combine previous data.
    end

    # Store conversation into long-term memory
    File.open('./memory.yml', 'w') do |file|
      file.write(@memory.to_yaml)
    end
  end
end