class InterestsController < ApplicationController

  def create
    @destination = Destination.find(params[:destination_id])
    @interest = @destination.interests.create(interest_params)
    if(@interest.save)
    redirect_to @destination
  else
    flash[:alert] = 'All Fields are required. You must enter your name, date of travel and tell us about your trip.'
    redirect_to @destination
  end

  end

  def edit
    @destination = Destination.find(params[:destination_id])
    @interest = @destination.interests.find(params[:id])
  end

  def update
    @destination = Destination.find(params[:destination_id])
    @interest = Interest.find(params[:id])
    if(@interest.update(interest_params))
    redirect_to @destination
  else
        flash[:alert] = 'All Fields are required. You must enter your name, date of travel and tell us about your trip.'
        render 'interests/edit'
  end
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
