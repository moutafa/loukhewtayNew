class AddIdfacebookToUser < ActiveRecord::Migration
  def change
    add_column :users, :idfacebook, :string

  end
end
