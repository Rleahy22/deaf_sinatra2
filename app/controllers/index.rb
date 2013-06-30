get '/' do
  @grandma = params[:grandma]
  @yoohoo = params[:yoohoo]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
  if params[:user_input].upcase == params[:user_input]
    @grandma = "ALL DAY LONG!"
  else
    @grandma = "SPEAK UP SONNY!"
  end
  #"<br>Params: <code>#{params.inspect}</code>"

  erb :index
end
