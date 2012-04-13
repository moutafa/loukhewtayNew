class Endroit < ActiveRecord::Base
  has_many :evenements
  has_many :abonnes
  belongs_to :categorie_endroit
end
