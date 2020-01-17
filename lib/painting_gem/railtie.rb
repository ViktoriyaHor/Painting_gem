# frozen_string_literal: true

require 'rails'

module PaintingGem

  class MyRailtie < Rails::Railtie
    config.after_initialize do
      PaintingGem.configure
      File.foreach( PaintingGem.configuration.file_path ) do |line|
        puts line
      end
    end
  end
end
