# frozen_string_literal: true

module PaintingGem

  class << self
    attr_accessor :configuration

    def configure
      @configuration ||= Configuration.new
      yield(configuration) if block_given?
    end
  end

  class Configuration

    attr_accessor :file_path

    def initialize
      spec = Gem::Specification.find_by_name("painting_gem")
      gem_root = spec.gem_dir
      gem_file_path = gem_root + "/lib/file.txt"
      @file_path = gem_file_path
    end
  end
end

