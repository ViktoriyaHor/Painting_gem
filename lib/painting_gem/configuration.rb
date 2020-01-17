# frozen_string_literal: true

module PaintingGem

  class << self
    attr_accessor :configuration

    def configure
      @configuration ||= Configuration.new
      yield(configuration) if block_given?
    end
    def reset
      @configuration = Configuration.new
    end
  end

  class Configuration

    attr_accessor :file_path

    def initialize
      @file_path = gem_file_path
    end

    private

    def gem_file_path
      gem_root = File.expand_path '../..', __FILE__
      gem_root + "/file.txt"
    end
  end
end

