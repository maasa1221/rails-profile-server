class ProfilesController < ApplicationController
    def index
        @profile = Profile.all
        render json: @profile
      end
    
      def create
        @profile = Profile.create(name: params[:name])
        render json: @profile
      end
    
      def update
        @profile = Profile.find(params[:id])
        @profile.update_attributes(name: params[:name])
        render json: @profile
      end
    
      def destroy
        @profile = Profile.find(params[:id])
        if @profile.destroy
          head :no_content, status: :ok
        else
          render json: @profile.errors, status: :unprocessable_entity
        end
      end
end
