require_relative 'config/environment'

class App < Sinatra::Base

  resp = Rack::Response.new

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get '/goodbye/:name' do
    resp.status = 200
    resp.write "Goodbye, #{params[:name]}."
  end

  get '/multiply/:num1/:num2' do
    @product = params[:num1].to_i * params[:num2].to_i
    resp.write "#{@product}"
  end
end