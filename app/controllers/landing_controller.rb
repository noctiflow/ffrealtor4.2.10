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
    @lead = Lead.new (lead_params)
    if @lead.save
      redirect_to landing_path
    else
      # change to flash error
      render 'buy1'
    end
  end
  def create2
    @lead = Lead.new (lead_params)
    if @lead.save
      redirect_to landing2_path
    else
      # change to flash error
      render 'buy2'
    end
  end
  def create3
    @lead = Lead.new (lead_params)
    if @lead.save
      redirect_to landing3_path
    else
      # change to flash error
      render 'sell1'
    end
  end
  def create4
    @lead = Lead.new (lead_params)
    if @lead.save
      redirect_to landing4_path
    else
      # change to flash error
      render 'sell2'
    end
  end

  private

  def lead_params
    params.require(:lead).permit(:first_name, :last_name, :address, :postalcode, :unit, :desireddeal, :extrainfo, :phone, :email, :source, :buysell)
  end
end
