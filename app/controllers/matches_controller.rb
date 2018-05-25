class MatchesController < ApplicationController
  def index
    @contacts = Contact.joins(:lead).order('leads.cityname asc')
  end
end
