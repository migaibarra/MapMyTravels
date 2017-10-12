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
  end
end
