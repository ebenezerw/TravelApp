class DestinationsController < ApplicationController
    def index
        @destination = Destination.all
      end

    def show
        @destination = Destination.find(params[:id])
    end

    def new

     end


    def create
        @destination = Destination.create(destination_params.merge(traveler_name: current_user.name))
        redirect_to @destination
      end

    def edit
      @destination = Destination.find(params[:id])
     end

    def update
      @destination = Destination.find(params[:id])
      @destination.update(destination_params)
      redirect_to @destination
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
