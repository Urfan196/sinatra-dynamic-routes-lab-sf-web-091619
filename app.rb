require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num ** 2}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @p = params[:phrase]
    @num * @p
    # @num.times do
    # "#{@p}"
    # end
  end

  get('/say/:number/:phrase') { params[:phrase] * params[:number].to_i }

end
