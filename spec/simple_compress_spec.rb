require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "SimpleCompress" do
  it "compresses into a gzipped string" do
    result = SimpleCompress.compress("Hello world!")
    expect(result.encoding).to eq(Encoding::BINARY)
    
    buf = StringIO.new(result)
    z = Zlib::GzipReader.new(buf)
    string = z.read
    expect(string).to eq('Hello world!')
  end
  
  it 'supports roundtripping' do
    expect(SimpleCompress.expand(SimpleCompress.compress("Hello world!"))).to eq("Hello world!")
  end
end
