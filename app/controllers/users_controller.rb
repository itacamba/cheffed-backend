class UsersController < ApplicationController
  

    def show
        user = User.find(params[:id])
        render json: user

    end

    def chefs_index 
        chefs = User.all.select{|user| user.is_chef == true}
        render json: chefs.as_json(include: { dishes: {except: [:created_at, :updated_at]}}, except: [:created_at, :updated_at])
    end

end
