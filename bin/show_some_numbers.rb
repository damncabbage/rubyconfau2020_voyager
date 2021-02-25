require 'bundler/setup'
require 'wavefile' # Read WAV files
require 'unicode_plot' # Print line graphs

wav_path = './384kHzStereo.wav' # Voyager Audio

WaveFile::Reader.new(wav_path) do |reader|
  # Jump ahead a fair bit, to the middle
  # of the audio file somewhere.
  reader.read(6_315_943)

  samples = reader
    .read(6_000)
    .samples
    .map { |channels| channels.first } # Left
  
  UnicodePlot
    .lineplot(samples, color: :green, labels: false)
    .render
end