class LeadcontactsController < ApplicationController
  def index
    @leads = Contact.where(:islead=>"true")
  end
  def new
    @lead = Contact.new
  end
  def create
    @lead = Contact.create (lead_params)
    respond_to do |format|
      if @lead.save
        format.html { redirect_to leadcontacts_path }
        format.js { }
      else
        format.html { flash.now[:alert] = "Not done"
        render "new"
        }
        format.js { render :js=>'alert("not done");' }
      end
    end
  end
  def destroy_multiple
    Contact.where(id: params[:contact_ids]).destroy_all
    respond_to do |format|
      format.html { redirect_to leadcontacts_url }
      format.json { head :no_content }
    end
  end
  private
  def lead_params
    params.require(:contact).permit(:first_name, :last_name, :address, :postalcode, :unit, :desireddeal, :extrainfo, :phone, :email, :source, :buysell, :leadstatus, :city, :neighbourhood, :propertytype, :price, :bedrooms, :bathrooms, :buildingage, :islead)
  end
end
