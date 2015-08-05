require_relative "./artist.rb"
require 'tempfile'

class Song

attr_accessor :title, :artist

    def initialize
    end

    def serialize
      clean = @title.downcase.gsub(/\s+/,"_")
      file = Tempfile.new(["#{clean}", '.txt'], 'tmp')
      file.write("#{@artist.name} - #{@title}")
      file.flush
    end

end
