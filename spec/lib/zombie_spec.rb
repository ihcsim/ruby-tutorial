require "./spec_helper"
require "rspec/collection_matchers"
require "./zombie"

describe Zombie do
  tweet1 = Tweet.new(status: 'Uuuuunhhhhh')
  tweet2 = Tweet.new(status: 'Arrrrgg')
  subject{
    zombie = Zombie.new(name: 'Ash', tweets: [tweet1, tweet2])
  }

  it "is named Ash" do
    expect(subject.name).to eq 'Ash'
  end

  it "has no brains" do
    expect(subject.brain).to be < 1
  end

  it { is_expected.to be_hungry }
  it { is_expected.not_to be_valid } 
  it { is_expected.to have(2).weapons }

  it 'include tweets' do
    expect(subject.tweets).to include(tweet1)
    expect(subject.tweets).to include(tweet2)
  end
end
