# Only watch these directories.
directories ['bin', 'lib']

guard :shell do
  watch(%r{bin/(.*)}) do |matches|
    system(matches[0]) && ""
  end
end

# Clear after every run.
clearing :on
