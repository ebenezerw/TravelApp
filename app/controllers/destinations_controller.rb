class DestinationsController < ApplicationController
    def index
        @destination = Destination.all
      end

    def show
        @destination = Destination.find(params[:id])
    end

    def new
         # link to new destination page
     end

    def create
        @destination = Destination.create(destination_params.merge(traveler_name: current_user.name))
        if @destination.save
            redirect_to @destination
        else
            flash[:alert] = 'All Fields are required. You must enter your name, destination, date of travel and tell us about your trip.'
            render 'new'

      end
      end

    def edit
        @destination = Destination.find(params[:id])
     end

    def update
        @destination = Destination.find(params[:id])
        @destination.update(destination_params)
        if @destination.save
            redirect_to @destination
        else
            flash[:alert] = 'All Fields are required. You must enter your name, destination, date of travel and tell us about your trip.'
            render 'edit'
      end
     end

    def destroy
        @destination = Destination.find(params[:id])
        @destination.destroy
        redirect_to destinations_path
    end

    private

    def destination_params
        params.require(:destination).permit(:place, :traveler_name, :social_link, :start_date, :end_date, :intro)
      end

    def set_auth
        @auth = session[:omniauth] if session[:omniauth]
    end
end
