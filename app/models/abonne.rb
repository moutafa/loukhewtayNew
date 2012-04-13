class Abonne < ActiveRecord::Base
  belongs_to :user
  belongs_to :endroit
end
