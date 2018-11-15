require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
      erb :super_hero
    end

    post "/teams" do
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
      @hero1_name = params[:team][:members][0][:name]
      @hero1_power = params[:team][:members][0][:power]
      @hero1_bio = params[:team][:members][0][:bio]
      binding.pry
      erb :team
    end

end


# {"team"=>
#   {"name"=>"adfs",
#    "motto"=>"fdsadfsa",
#    "members"=>
#     [{"name"=>"qwe", "power"=>"ewq", "bio"=>"weqweq"},
#      {"name"=>"hgfdghfd", "power"=>"ghdf", "bio"=>"fgdfds"},
#      {"name"=>"cxzczx", "power"=>"cxzcxz", "bio"=>"cxzc"}]}}
