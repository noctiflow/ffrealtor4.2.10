class LandingController < ApplicationController
  # layout 'landing'
  def index

  end
  def create1
    @lead = Lead.new
  end
  def create2

  end
  def create3

  end
  def create4

  end
  def create
    @lead = Lead.new (lead_params)
    if @lead.save
      redirect_to 'landing#index'
    else
      render 'create1'
    end
  end

  private

  def lead_params
    params.require(:lead).permit(:first_name, :last_name, :address, :postalcode, :unit, :desireddeal, :extrainfo, :phone, :email)
  end
end
