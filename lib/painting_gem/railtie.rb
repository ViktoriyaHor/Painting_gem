# frozen_string_literal: true

require 'rails'

module PaintingGem

  class MyRailtie < Rails::Railtie
    config.after_initialize do
      PaintingGem::Configuration.new.run
    end
  end
end