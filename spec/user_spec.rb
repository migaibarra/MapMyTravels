require 'spec_helper'

describe User do
  let(:user_example) do
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

  describe "validations" do
    it 'is not valid without a first_name' do
      user_example.first_name = ""
      expect(user_example).to_not be_valid
    end

    it 'is valid without a middle_initial' do
      user_example.middle_initial = ""
      expect(user_example).to be_valid
    end

    it 'is not valid without a last_name' do
      user_example.last_name = ""
      expect(user_example).to_not be_valid
    end

    it 'is not valid without an email' do
      user_example.email = ""
      expect(user_example).to_not be_valid
    end
  end
end
