# frozen_string_literal: true

desc "print file"
task "paint" do
  spec = Gem::Specification.find_by_name("painting_gem")
  gem_root = spec.gem_dir
  gem_file_path = gem_root + "/lib/file.txt"
  file_path = File.exist?("lib/file.txt") ? "lib/file.txt" : gem_file_path
  PaintingGem::Paint.new( file_path ).run
end
