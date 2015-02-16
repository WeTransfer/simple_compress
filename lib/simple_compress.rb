require 'zlib'

module SimpleCompress
  VERSION = '0.0.1'
  
  # Compress a given binary string into a binary stringthat is usable as content for a .gz file.
  def compress(binary_string)
    buf = StringIO.new
    gz = Zlib::GzipWriter.new(buf)
    gz.write(binary_string)
    gz.close
    buf.string.force_encoding(Encoding::BINARY)
  end
  
  # Expand a given .gz binary string to it's original size
  # Simple explanation at http://stackoverflow.com/questions/1361892/how-to-decompress-gzip-string-in-ruby
  def expand(binary_string)
    buf = StringIO.new(binary_string)
    z = Zlib::GzipReader.new(buf)
    z.read
  end
  
  extend self
end
