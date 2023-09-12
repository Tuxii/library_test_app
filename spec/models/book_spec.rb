RSpec.describe Book do
  describe "#borrower" do
    subject { Book.new(title: "Harry Potter", isbn: "123") }

    it "is associated to a User" do
      subject.borrower = User.new
      expect(subject.borrower).to be_a(User)
    end

    context "when borrower is not present" do
      it "is valid" do
        subject.borrower = nil
        expect(subject).to be_valid
      end
    end

    context "when borrower is present" do
      it "is valid" do
        subject.borrower = User.new
        expect(subject).to be_valid
      end
    end

  end

  describe "#title" do
    subject { Book.new(isbn: "123") }

    context "when title is not present" do
      it "is invalid" do
        subject.title = nil
        expect(subject).to be_invalid
        expect(subject.errors[:title]).to include("can't be blank")
      end
    end

    context "when title is present" do
      it "is valid" do
        subject.title = "Harry Potter"
        expect(subject).to be_valid
      end
    end
  end
end
