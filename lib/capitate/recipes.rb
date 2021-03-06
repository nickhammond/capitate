# Load recipes.
recipes = Dir[File.dirname(__FILE__) + "/../recipes/**/*.rb"].collect { |recipe| File.expand_path(recipe) }
recipes.each do |recipe|
  Capistrano::Configuration.instance.load recipe
end
