require_relative "model"
require_relative "view"

class Controller
  def index
    @gossips = Gossip.all
    View.render("index", { gossips: @gossips })
  end

  def new_gossip
    View.render("new")
  end

  def create_gossip(params)
    Gossip.create(author: params["author"], content: params["content"])
    redirect "/"
  end

  def show_gossip(id)
    @gossip = Gossip.find(id)
    View.render("show", { gossip: @gossip })
  end
end
