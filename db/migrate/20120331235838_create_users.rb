class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :prenom
      t.string :nom
      t.string :login
      t.string :password
      t.string :email
      t.string :telephone

      t.timestamps
    end
  end
end
