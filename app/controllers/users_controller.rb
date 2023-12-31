class UsersController < ApplicationController
    def manage_roles
        @users = User.all

    end
    def show
        
    end

    def edit
        @user = User.find(params[:id])    
    end

    def update
        @user = User.find(params[:id])
        respond_to do |format|
            if @user.update(user_params)
              format.html { redirect_to user_url(@user), notice: "User role was successfully updated." }
              format.json { render :show, status: :ok, location: @user }
            else
              format.html { render :edit, status: :unprocessable_entity }
              format.json { render json: @user.errors, status: :unprocessable_entity }
            end
        end
    end

    private
    def user_params
        params.require(:user).permit(:role_ids)
    end
end
  