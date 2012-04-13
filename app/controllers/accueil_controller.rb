class AccueilController < ApplicationController
  def index
    @evenements = Evenement.all(:order => 'created_at')
  end
end
