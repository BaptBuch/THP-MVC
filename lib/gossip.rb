require 'pry'
require 'csv'

class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @author = author
    @content = content    
  end

  def save
    CSV.open("db/gossip.csv", "a") do |csv| 
      csv << [@author, @content]
    end 
  end

  def self.all
    all_gossips = []
  
    CSV.read("db/gossip.csv").each do |ligne| 
      gossip_provisoire = Gossip.new(ligne[0], ligne[1])
      all_gossips << gossip_provisoire
    end 
  
    return all_gossips
  end

  def self.delete
    CSV.open("db/gossip.csv", "w") {|csv| csv.truncate(0)}
  end


end

#binding.pry