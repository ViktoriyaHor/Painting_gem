# frozen_string_literal: true

module PaintingGem

  class Paint
    def initialize(file_path)
      @file_path = file_path
    end

    def run
      File.foreach( @file_path ) do |line|
        puts line
      end
    end
  end

end