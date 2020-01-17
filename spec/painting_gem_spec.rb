# frozen_string_literal: true

require 'spec_helper'

RSpec.describe PaintingGem do

  it 'PaintingGem.configuration returns nil without self methods' do
    expect(PaintingGem.configuration).to be nil

  end
  it 'PaintingGem::Configuration has method gem_file_path' do
    allow_any_instance_of(PaintingGem::Configuration).to receive(:gem_file_path).and_return(true)
  end
  it "has a version number" do
    expect(PaintingGem::VERSION).not_to be nil
  end
  context 'self methods' do
    it 'PaintingGem.configure do not returns nil' do
      PaintingGem.configure
      expect(PaintingGem.configuration).not_to be nil
    end
    it 'PaintingGem.reset do not returns nil' do
      PaintingGem.reset
      expect(PaintingGem.configuration).not_to be nil
    end
  end

  context 'with configuration block' do
    before(:each) do
      PaintingGem.configure do |config|
        config.file_path = 'lib/file1.txt'
      end
    end
    it 'returns the correct file_path' do
      expect(PaintingGem.configuration.file_path).to eq 'lib/file1.txt'
    end
  end

  context 'without configuration block' do
    before(:each) do
      PaintingGem.reset
    end
    it 'returns the default file_path' do
      gem_root = File.expand_path '../..', __FILE__
      expect(PaintingGem.configuration.file_path).to eq gem_root + '/lib/file.txt'
    end
    it 'the default file_path must be a string' do
      expect(PaintingGem.configuration.file_path).to be_instance_of String
    end
    it 'PaintingGem.configuration has instance variable' do
      expect(PaintingGem.configuration.instance_variable_get(:@file_path)).not_to be_empty
    end
  end
  context 'class Error' do
    it 'to test for class inheritance' do
      expect(PaintingGem::Error).to be < StandardError
    end
  end
  context 'class MyRailtie' do
    it 'returns the default file_path' do
      expect(PaintingGem::MyRailtie).to be < Rails::Railtie
    end
  end
end
