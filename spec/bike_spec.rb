require "./lib/bike.rb"

describe Bike do
  it "should respond to the method working?" do
    expect(subject).to respond_to :working?
  end
end