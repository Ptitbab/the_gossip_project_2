class StaticPagesController < ApplicationController
  def index
    @gossips = Gossip.all
  end
  
  def contact
    
  end

  def team
    
  end

  def bonjour
    @name = params[:name]
  end

  def gossip
    puts params
    @gossip = Gossip.find(params[:id])
  end

  def author
    @author = User.find(params[:id])
  end
end
