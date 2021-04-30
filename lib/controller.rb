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
    print @all_gossips
    @view.index_gossips(@gossips)
  end

end