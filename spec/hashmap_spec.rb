require './lib/hashmap'

describe Hashmap do
  describe "#hash" do
    it "takes a string and returns a number" do
      map = Hashmap.new
      expect(map.hash("test")).to eql(2)
    end

    it "takes another string and returns a number" do
      map = Hashmap.new
      expect(map.hash("rabbit")).to eql(10)
    end
  end
end