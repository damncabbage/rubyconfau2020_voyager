class PGM
  MAX_CHANNEL_VALUE = 255

  attr_reader :width, :height

  def initialize(io, width, height)
    @io = File.open(io, "wb")
    @width = width
    @height = height

    write_header

    if block_given?
      yield self
      close
    end
  end

  private def write_header
    # 1) Magic header; tells the eventual reader that it's an ASCII-encoded PGM.
    # 2) Width in pixels
    # 3) Height in pixels
    # 4) The max value each pixel's colour channel can be; PPM maxes out at 255.
    @io.write "P2 #{width} #{height} #{MAX_CHANNEL_VALUE}\n"
  end

  def <<(argb)
    @io.write(Array(argb).join(" ") + "\n")
    self
  end

  def close
    @io.flush
    @io.close
  end
end
