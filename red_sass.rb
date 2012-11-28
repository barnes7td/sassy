require 'erb'
require 'sass'

erb_file = File.open "./views/erb/index.erb", "r"
html = ERB.new erb_file.read
File.open "./views/index.html", "w" do |f|
  f.puts html.result
end
puts "Compiled index.erb to index.html"

sass_file = File.open "./stylesheets/sass/style.scss", "r"
sass = Sass::Engine.new(sass_file.read, syntax: :scss)
File.open "./stylesheets/style.css", "w" do |f|
  f.puts sass.render
end
puts "Compiled style.scss to style.css"