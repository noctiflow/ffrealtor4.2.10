class MatchesController < ApplicationController
  def index
    if current_user.admin?
      @contacts = Contact.where(:islead => "false").where.not(:stage => "Closed",:city => "", :propertytype => "").order('city asc')
    else
      @contacts = Contact.where(:assigned_to => current_user.id, :islead => "false").where.not(:stage => "Closed",:city => "", :propertytype => "").order('city asc')
    end
  end
end
