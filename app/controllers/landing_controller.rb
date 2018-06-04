class LandingController < ApplicationController
  # layout 'landing'
  def index

  end
  def buy1
    @lead = Lead.new
  end
  def buy2
    @lead = Lead.new
  end
  def sell1
    @lead = Lead.new
  end
  def sell2
    @lead = Lead.new
  end
  def create1
    @lead = Lead.create (lead_params)
    # LeadMailer.new_lead_notification(@lead).deliver
    respond_to do |format|
      format.html { redirect_to landing_path }
      format.js { }
    end
  end
  def create2
    @lead = Lead.create (lead_params)
    # LeadMailer.new_lead_notification(@lead).deliver
    respond_to do |format|
      format.html { redirect_to landing2_path }
      format.js { }
    end
  end
  def create3
    @lead = Lead.create (lead_params)
    # LeadMailer.new_lead_notification(@lead).deliver
    respond_to do |format|
      format.html { redirect_to landing3_path }
      format.js { }
    end
  end
  def create4
    @lead = Lead.create (lead_params)
    # LeadMailer.new_lead_notification(@lead).deliver
    respond_to do |format|
      format.html { redirect_to landing4_path }
      format.js { }
    end
  end
  def update1
    @lead = Lead.find(params[:id])
    LeadMailer.new_lead_notification(@lead).deliver
    if @lead.update(lead_params)
      redirect_to '/landing'
    else
      render :create1
    end
  end
  private

  def lead_params
    params.require(:lead).permit(:first_name, :last_name, :address, :postalcode, :unit, :desireddeal, :extrainfo, :phone, :email, :source, :buysell, :leadstatus, :cityname, :neighbourhood, :propertytype, :pricemin, :pricemax, :bedrooms, :bathrooms, :buildingage)
  end
end
