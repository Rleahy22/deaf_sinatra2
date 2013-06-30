get '/' do
  @grandma = params[:grandma]
  erb :index
end

post '/' do
  @grandma = params[:user_input]
  if @grandma == params[:user_input].upcase && @grandma.length > 0
    @grandma = "ALL DAY LONG!"
  else
    @grandma = "SPEAK UP SONNY!"
  end
  erb :index, :layout => false
end
