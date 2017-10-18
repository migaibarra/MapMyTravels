require 'spec_helper'

describe "User Controller" do
  let(:user_example) do
    user_creation = User.new(
      first_name: "Jonny",
      middle_initial: "I",
      last_name: "Appleseed",
      email: "jiapple@example.com"
    )

    user_creation.password = "passw0rd"
    user_creation.save!
    return user_creation
  end

  it 'gets a 200 response on the /users route' do
    get '/users'
    expect(last_response.status).to eq(200)
  end

  it 'gets a 200 response on the /users/new route' do
    get '/users/new'
    expect(last_response.status).to eq(200)
  end

  it 'posts a redirect response after filling out a new user' do
    post '/users', { user_example: :user_params }
  end
end
