require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
      erb :super_hero
    end

    post "/teams" do
      @team_name = params[:team][:name]
      @hero_name = params[:team][:members][0][:name]
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
