class SessionsController < ApplicationController
    def new
       
    end

    def create
        puts params
        session_params = params.require(:sessions).permit(:email, :password)
        user = User.find_by(email: session_params[:email])
        puts user.id
        puts params
        if user && user.authenticate(session_params[:password])
            session[:user_id] = user.id
            redirect_to gossips_path#, flash.now[:notice] = 'Logged in successfully'
            puts session[:user_id]
        else
            #flash.now[:danger] = 'Invalid email/password combination'
            render :new
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to gossips_path, notice: "logged out"
    end
end
