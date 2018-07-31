class MatchesController < ApplicationController
  def index
    if current_user.admin?
      @contacts = Contact.order('city asc')
    else
      @contacts = Contact.where(:assigned_to => current_user.id).order('city asc')
    end
  end
end
