get "/users" do
  erb :'/users/index'
end

get "/users/new" do
  erb :'/users/new'
end

post "/users" do
  user = User.new(params[:user_params])
  p user
  p user.valid?
  if user.save
    redirect "/login"
  else
    erb :'/users/new'
    @errors = user.errors.full_messages
  end
end

get "/users/:id" do
  @user = User.find(params[:id])
  erb :'/users/show'
end
