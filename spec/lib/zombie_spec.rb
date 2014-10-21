require "./spec_helper"
require "rspec/collection_matchers"
require "rspec/its"
require "./zombie"

describe Zombie do
  tweet1 = Tweet.new(status: 'Uuuuunhhhhh')
  tweet2 = Tweet.new(status: 'Arrrrgg')
  subject{
    zombie = Zombie.new(name: 'Ash', tweets: [tweet1, tweet2])
  }

  its(:name) { is_expected.to eq 'Ash' }
  its(:brain) { is_expected.to be < 1 }
  it { is_expected.to be_hungry }
  it { is_expected.not_to be_valid } 
  it { is_expected.to have(2).weapons }
  its(:tweets) { is_expected.to include(tweet1) }
  its(:tweets) { is_expected.to include(tweet2) }
end
