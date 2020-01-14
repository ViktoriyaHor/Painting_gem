require_relative "painting_gem/version"
require_relative "painting_gem/configuration"
require_relative "painting_gem/railtie" if defined?(Rails)

module PaintingGem
  class Error < StandardError; end

end

#gem 'painting_gem', path: '~/painting_gem'
