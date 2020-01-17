source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
# Specify your gem's dependencies in painting_gem.gemspec
gemspec

gem "rake", "~> 12.0"
gem "rspec", "~> 3.0"
gem 'rails'
