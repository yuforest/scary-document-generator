require 'rails_helper'

RSpec.describe Document, type: :model do
  it "is valid with document string" do
    document = Document.new(content: "hello world", name: "yuta")
    expect(document).to be_valid
  end

  it "is invalid if content doesn't exist" do
    document = Document.new(name: "yuta")
    expect(document).to be_invalid
  end

  it "is valid if name doesn't exist and content exist" do
    document = Document.new(content: "hello world")
    expect(document).to be_valid
  end
end
