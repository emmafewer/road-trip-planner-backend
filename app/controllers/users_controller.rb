class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :index]
    
    def index
        users = User.all 
        render json: users, include: ['road_trips']
    end

    def show
        user = User.find(params[:id])
        render json: user, include: [:road_trips]
    end

    def create
        user = User.create(user_params)
        if user.valid?
            my_token = encode_token({user_id: user.id})
            render json: {id: user.id, username: user.username, name: user.name, token: my_token}
        else
            render json: {error: 'Failed to create user'}, status: :not_acceptable
        end
    end

    def update
        user = User.find(params[:id])
        user.name = params[:name]
        render :json => user
    end 

    def destroy
        user = User.find(params[:id])
        user.destroy
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :name)
    end
end
