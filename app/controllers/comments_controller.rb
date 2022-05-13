class CommentsController < ApplicationController
    def create
        puts params
        @gossip = Gossip.find(params[:gossip_id])
        puts params
        @comment = @gossip.comments.create(params[:comment].permit(:name, :content))
        puts params
        redirect_to gossip_path(@gossip)
    end

    def destroy
        @gossip = Gossip.find(params[:gossip_id])
        puts params
        @comment = @gossip.comments.find(params[:id])
        puts params
        @comment.destroy
        redirect_to gossip_path(@gossip)
    end
    
end
