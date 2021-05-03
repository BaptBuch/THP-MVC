require 'gossip'
require 'view'

class Controller
  attr_accessor :content, :author

  def initialize

    @view = View.new

  end

  def create_gossip

    @params = @view.create_gossip
    my_gossip = Gossip.new(@params.values[0], @params.values[1])
    my_gossip.save

  end

  def index_gossips
    @view.index_gossips(Gossip.all)
  end

  def delete_gossip
    all_gossips = Gossip.all
    Gossip.delete
    @view.delete_gossip(all_gossips)
  end

end