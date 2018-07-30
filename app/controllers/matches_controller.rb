class MatchesController < ApplicationController
  def index
    if current_user.admin?
      @contacts = Contact.joins(:lead).order('leads.cityname asc')
      @extras = Contact.all
    else
      @contacts = Contact.joins(:lead).where(:assigned_to => current_user.id).order('leads.cityname asc')
    end
  end
end
