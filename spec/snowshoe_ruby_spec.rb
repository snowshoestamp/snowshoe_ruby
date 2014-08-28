require 'spec_helper'

describe Client do
  subject { Client.new('5bc9c3ddf1f46265e03a', '70a99aa7f4de7f48f235215ce2708b6e4f19377c') }

  describe '#initialize' do

  	it 'creates a new client with the correct base_url' do
      expect(subject.base_url).to eq 'http://beta.snowshoestamp.com/api/v2/'
    end

    it 'creates a new client with the correct app_key' do
      expect(subject.app_key).to eq '5bc9c3ddf1f46265e03a'
    end

    it 'creates a new client with the correct app_secret' do
      expect(subject.app_secret).to eq '70a99aa7f4de7f48f235215ce2708b6e4f19377c'
    end

    # it 'combines nouns with doge adjectives' do
    #   expect(output).to match /so grandmom\./i
    #   expect(output).to match /such sweater\./i
    #   expect(output).to match /very christmas\./i
    # end

    # it 'always appends "wow."' do
    #   expect(output).to end_with 'wow.'
    # end
  end
end