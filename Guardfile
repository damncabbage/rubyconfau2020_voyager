# Uses the 'guard' and 'guard-shell' gems.

# Only watch these directories.
directories ['bin', 'lib']

guard :shell do
  # Watch 'bin/<something>.rb' files,
  watch %r{bin/(.*)\.rb} do |matches|
    # ... and use Ruby to run them:
    system('ruby', matches[0])
  end
end

# Clear after every run.
clearing :on