require 'spec_helper'

describe "User Controller" do
  it 'gets a 200 response on the /users route' do
    get '/users'
    expect(last_response.status).to eq(200)
  end

  it 'gets a 200 response on the /users/new route' do
    get '/users/new'
    expect(last_response.status).to eq(200)
  end
end
