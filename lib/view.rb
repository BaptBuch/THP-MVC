require 'pry'

class View
  attr_accessor :content, :author

  def create_gossip
    puts "Quel nom d'auteur dois-je enregistrer ?"
    print "> " #José
    content = gets.chomp


    puts "Quel ragot as-tu pour moi aujourd'hui  ??" 
    print "> " #Josianne a 3 tétons
    author = gets.chomp

    return params = { content: content, author: author }
  end

  def index_gossips(gossips)
    puts "Voici la liste des rapporteurs de potins et de leurs potins en ma possession: "
    gossips.each do |ligne|     
      print ligne.author
      print " - "
      print ligne.content
      puts
    end 
  end

  def delete_gossip(gossips)
    i = 0  
    
    puts "Voici la liste des potins en ma possession: "
      gossips.each do |ligne|     
        print i +=1
        print ") "
        print ligne.author
        print " - "
        print ligne.content
        puts
      end 
  
    puts "Quel potin veux-tu supprimer ?"
    num = gets.chomp.to_i
    num -= 1
    gossips.delete_at(num)
    gossips.each do |gossip|
      gossip.save
    end
    
    return gossips    
  end
end