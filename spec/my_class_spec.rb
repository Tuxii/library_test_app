RSpec.describe Integer do
  describe "#odd?" do
    context "when odd" do
      subject { 1 }
      it "returns true" do
      	expect(subject.odd?).to eq(true)
      end
    end

    context "when even" do
      subject { 2 }
      it "returns false" do
      	expect(subject.odd?).to eq(false)
      end
    end
  end
end
