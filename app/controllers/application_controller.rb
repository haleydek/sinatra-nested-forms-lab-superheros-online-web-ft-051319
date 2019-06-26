require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    get '/teams' do
      @teams = Team.all
      @heroes = Hero.all
      erb :team
    end
    
    post '/teams' do
      Team.new(params[:team])
      params[:team][:heroes].each do |hero_hash|
        Hero.new(hero_hash)
      end
      redirect '/teams'
    end
    
end
