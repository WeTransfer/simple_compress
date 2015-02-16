require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "SimpleCompress" do
  it "compresses and expands" do
    expect(SimpleCompress.compress("Hello world!").b).to eq(
      "\x1F\x8B\b\x00P\xF6\xE1T\x00\x03\xF3H\xCD\xC9\xC9W(\xCF/\xCAIQ\x04\x00\x95\x19\x85\e\f\x00\x00\x00".b
    )
    
    expect(SimpleCompress.expand(SimpleCompress.compress("Hello world!"))).to eq("Hello world!")
  end
end
