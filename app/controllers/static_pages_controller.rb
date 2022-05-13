class StaticPagesController < ApplicationController
  def index
    @gossips = Gossip.all
  end
  
  def show
  end

  def new
    
  end


  def user
    @user = User.find(params[:id])
  end
end
