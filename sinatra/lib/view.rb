class View
  def self.render(template, locals = {})
    erb template.to_sym, locals: locals
  end
end

require "sinatra"

# class View < Sinatra::Base
#   def self.render(template, locals = {})
#     erb template.to_sym, locals: locals  # ✅ Sinatra reconnaît maintenant erb
#   end
# end
class View
  def self.render(template, locals = {})
    erb template.to_sym, locals: locals
  end
end

