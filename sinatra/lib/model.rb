class View
  def self.render(template, locals = {})
    erb template.to_sym, locals: locals
  end
end

require "sinatra/activerecord"

class Gossip < ActiveRecord::Base
end
