require 'spec_helper'

describe Place do
  describe "validations" do
    let(:place_example) { Place.new(name: "Austin", state: "TX", country: "United States of America") }

    it 'is not valid without a name' do
      place_example.name = ""
      expect(place_example).to_not be_valid
    end

    it 'is not valid without a country' do
      place_example.country = ""
      expect(place_example).to_not be_valid
    end
  end

  describe "Associations" do

  end
end
