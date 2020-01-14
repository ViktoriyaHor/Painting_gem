# frozen_string_literal: true
require 'helpers/configuration'

module PaintingGem

  class Paint

    extend Configuration

    spec = Gem::Specification.find_by_name("painting_gem")
    gem_root = spec.gem_dir
    default_file_path = gem_root + "/lib/file.txt"

    define_setting :file_path, default_file_path

    def run
      File.foreach(@@file_path) do |line|
        puts line
      end
    end

  end
end

