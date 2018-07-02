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
  def buy3
    @lead = Lead.new
  end
  def buy4
    @lead = Lead.new
  end
  def sell1
    @lead = Lead.new
  end
  def sell2
    @lead = Lead.new
  end
  def sell3
    @lead = Lead.new
  end
  def sell4
    @lead = Lead.new
  end
  def create1
    @lead = Lead.create (lead_params)
    # LeadMailer.new_lead_notification(@lead).deliver
    respond_to do |format|
      if @lead.save
        format.html { redirect_to landing_path }
        format.js { }
      else
        format.html { flash.now[:alert] = "Not done"
        render "new"
        }
        format.js { render :js=>'alert("not done");' }
      end
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

    # if @lead.update(lead_params)
    #   redirect_to '/landing'
    # else
    #   render :create1
    # end
    respond_to do |format|
      if @lead.update(lead_params)
        format.html { redirect_to '/landing' }
        # LeadMailer.new_lead_notification(@lead).deliver # disabled for the moment
      else
        format.html { render :create1 }
      end
    end
  end
  private

  def lead_params
    params.require(:lead).permit(:first_name, :last_name, :address, :postalcode, :unit, :desireddeal, :extrainfo, :phone, :email, :source, :buysell, :leadstatus, :cityname, :neighbourhood, :propertytype, :pricemin, :pricemax, :bedrooms, :bathrooms, :buildingage)
  end
end
