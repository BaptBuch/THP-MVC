require 'pry'

class View
  attr_accessor :content, :author

  def create_gossip
    puts "Quel nom d'auteur dois-je enregistrer ?"
    print "> "
    content = gets.chomp


    puts "Quel ragot as-tu pour moi aujourd'hui  ??" 
    print "> "
    author = gets.chomp

    return params = { content: content, author: author }
  end

  def index_gossips(gossips)
    puts "Voici la liste des rapporteurs de potins et de leurs potins en ma possession: "
    CSV.read("db/gossip.csv").each do |ligne|       
      print ligne
      puts
    end 
  end

end