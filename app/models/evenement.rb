class Evenement < ActiveRecord::Base
  belongs_to :user
  belongs_to :categorie_event
  belongs_to :endroit
end
