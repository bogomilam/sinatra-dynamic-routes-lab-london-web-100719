require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
      params[:name].reverse
  end

  get '/square/:number' do 
      (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    response = ''
    params[:number].to_i.times do 
      response += params[:phrase]
  end
  response
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
  "{#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i

    answer = 'No operator found'

    case params[:operation]
    when 'add'
      answer = (n1 + n2).to_s
    when 'subtract'
      answer = (n1 - n2).to_s
    when 'multiply'
      answer = (n1 * n2).to_s
    when 'divide'
      answer = (n1 / n2).to_s
    end
  end
end