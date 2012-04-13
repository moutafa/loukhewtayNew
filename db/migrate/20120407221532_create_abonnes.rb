class CreateAbonnes < ActiveRecord::Migration
  def change
    create_table :abonnes do |t|
      t.integer :user_id
      t.integer :endroit_id
      t.string :email
      t.string :telephone
      t.integer :id_abonne

      t.timestamps
    end
  end
end
