# Set up Bundler, letting us use our gems.
require 'bundler/setup'

# A library I added to my Gemfile
require 'unicode_plot'

def some_numbers
  [1, 2, 3, 2, -2, 4, 5].shuffle
end

puts "Hello! I made you a picture:"

plot = UnicodePlot.lineplot(
  some_numbers,
  color: :green,
  labels: false
)
plot.render # Print a graph.