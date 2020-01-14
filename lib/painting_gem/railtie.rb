# frozen_string_literal: true

require 'rails'

module PaintingGem

  class MyRailtie < Rails::Railtie
    config.after_initialize do
      puts PaintingGem::Paint.new.run
    end
  end
end