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
    it 'is not valid without a username' do
      user_example.first_name = ""
      expect(user_example).to_not be_valid
    end
  end
end
