class GossipsController < ApplicationController

    def index
        @gossips = Gossip.all
    end

    def show
        @gossip = Gossip.find(params[:id])
    end

    def update
        @gossip = Gossip.find(params[:id])
        @gossip.update(gossip_params)
        redirect_to gossips_path
    end

    def destroy
        @gossip = Gossip.find(params[:id])
        @gossip.destroy
        redirect_to gossips_path
    end

    def new
        @gossip = Gossip.new
    end

    def create
        # anonymous = User.create(first_name: 'Anonyme', last_name: 'anonyme', city: City.first)
        gossip = Gossip.create(gossip_params.merge(user: current_user))
        if gossip.save
        redirect_to gossip_path(gossip.id), notice: 'successfully created'
        else
            redirect_to new_gossip_path
        end
    end

    def edit
        @gossip = Gossip.find(params[:id])
    end

    private

    def gossip_params
        params.require(:gossip).permit(:title, :content)
    end
end