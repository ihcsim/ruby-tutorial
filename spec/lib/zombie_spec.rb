require "./spec_helper"
require "./zombie"
describe Zombie do
  it "is named Ash" do
    zombie = Zombie.new
    expect(zombie.name).to eq 'Ash'
  end

  it "has no brains" do
    zombie = Zombie.new
    expect(zombie.brain).to be < 1
  end

  it "is hungry" do
    zombie = Zombie.new
    expect(zombie).to be_hungry
  end
end
