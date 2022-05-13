class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def update
        # @user = User.find(params[:id])
        # @user.update(gossip_params)
        # redirect_to gossips_path
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to gossips_path
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(params.require(:user).permit(:first_name, :last_name, :email, :password))
        puts params
        puts @user.errors.messages
        redirect_to gossips_path, notice: "Successfully created"
        puts @user.id
    end

    def edit
        @user = User.find(params[:id])
    end

    private

    # def user_params
    #     params.require(:user).permit(:title, :content)
    # end
end