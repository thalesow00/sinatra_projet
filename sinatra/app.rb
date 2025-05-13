require "sinatra"
require "sinatra/activerecord"
require_relative "lib/controller"

set :database, { adapter: "sqlite3", database: "db/gossip.db" }

# Routes principales
get "/" do
  Controller.new.index
end

get "/gossips/new" do
  Controller.new.new_gossip
end

post "/gossips/create" do
  Controller.new.create_gossip(params)
end

get "/gossips/:id" do
  Controller.new.show_gossip(params[:id])
end
