require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :team
  end

  post '/team' do
    <<-PAGE
      Team Name: #{params[:name]}
      Coach: #{params[:coach]}
      Point Guard: #{params[:pg]}
      Shooting Guard: #{params[:sg]}
      Power Forward: #{params[:pf]}
      Center: #{params[:c]}
    PAGE
  end

end
