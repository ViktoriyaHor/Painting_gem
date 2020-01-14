# frozen_string_literal: true

require 'rails'

module PaintingGem
  class MyRailtie < Rails::Railtie
    rake_tasks do
      load "tasks/task.rb"
    end
  end
end