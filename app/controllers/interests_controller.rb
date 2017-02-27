class InterestsController < ApplicationController

  def create
    @destination = Destination.find(params[:destination_id])
    @interest = @destination.interests.create(interest_params)
    redirect_to @destination

  end

  def edit
    @destination = Destination.find(params[:destination_id])
    @interest = @destination.interests.find(params[:id])
  end

  def update
    @destination = Destination.find(params[:destination_id])
    @interest = Interest.find(params[:id])
    @interest.update(interest_params)
    redirect_to @destination
  end

  def destroy
    @destination = Destination.find(params[:destination_id])
    @interest = Interest.find(params[:id])
    @interest.destroy
    redirect_to @destination

  end


private

def interest_params
  params.require(:interest).permit(:traveler_name, :social_link, :start_date, :end_date, :comment)

end

end
