require "./spec_helper"
require "rspec/collection_matchers"
require "./zombie"

describe Zombie do
  it "is named Ash" do
    expect(subject.name).to eq 'Ash'
  end

  it "has no brains" do
    expect(subject.brain).to be < 1
  end

  it "is hungry" do
    expect(subject).to be_hungry
  end

  it 'is invalid without a name' do
    expect(subject).not_to be_valid
  end

  it 'include tweets' do
    tweet1 = Tweet.new(status: 'Uuuuunhhhhh')
    tweet2 = Tweet.new(status: 'Arrrrgg')
    zombie = Zombie.new(nanme: 'Ash', tweets: [tweet1, tweet2])
    expect(zombie.tweets).to include(tweet1)
    expect(zombie.tweets).to include(tweet2)
  end

  it 'starts with two weapons' do
    expect(subject).to have(2).weapons
  end
end
