class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.save
    redirect_to root_path
  end

  private
    def listing_params
      params.require(:listing).permit(:name, :location, :description, :availability, :email, :phone_number)
    end
    
end