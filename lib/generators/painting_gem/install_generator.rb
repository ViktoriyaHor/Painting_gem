# frozen_string_literal: true

module PaintingGem
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)
      desc "Creates PaintingGem initializer for your application"

      def copy_initializer
        template "painting_gem_initializer.rb", "config/initializers/painting_gem.rb"

        puts "Install complete!"
      end
    end
  end
end