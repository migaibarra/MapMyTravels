require 'spec_helper'

describe Place do
  let(:place_example) { Place.new(name: "Austin", state: "TX", country: "United States of America") }

  describe "validations" do
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
    let(:user_example1) do
      user_creation = User.new(
        first_name: "John",
        middle_initial: "P",
        last_name: "Smith",
        email: "jpsmith@example.com"
      )

      user_creation.password = "passw0rd"
      user_creation.save!
      return user_creation
    end

    let(:user_example2) do
      user_creation = User.new(
        first_name: "Sarah",
        middle_initial: "P",
        last_name: "Samuels",
        email: "sps@example.com"
      )

      user_creation.password = "anotherPassw0rd"
      user_creation.save!
      return user_creation
    end

    it 'is a users hometown' do
      place_example.hometown_people << user_example1
      expect(place_example.hometown_people).to include(user_example1)
    end

    it 'can have multiple users listing the place as a hometown' do
      place_example.hometown_people << user_example1
      place_example.hometown_people << user_example2
      expect(place_example.hometown_people).to eq([user_example1, user_example2])
    end

    it 'is a users current place' do
      place_example.citizens << user_example1
      expect(place_example.citizens).to include(user_example1)
    end

    it 'can have multiple users listing the place as a currently living at' do
      place_example.citizens << user_example1
      place_example.citizens << user_example2
      expect(place_example.citizens).to eq([user_example1, user_example2])
    end

    xit 'can have multiple users visit a place' do
      # This association is not properly set up yet.
      place_example.visits << user_example1
      place_example.visits << user_example2
      place_example.reload
      expect(visit.place).to eq(place_example)
    end
  end
end
