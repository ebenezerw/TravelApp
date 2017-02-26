class InterestsController < ApplicationController

  def create
    @destination = Destination.find(params[:destination_id])
    @interest = @destination.interests.create(interest_params)
    redirect_to @destination

  end
private

def interest_params
  params.require(:interest).permit(:traveler_name, :social_link, :start_date, :end_date, :comment)

end

end
