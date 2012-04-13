class CreateEvenements < ActiveRecord::Migration
  def change
    create_table :evenements do |t|
      t.string :nom
      t.text :description
      t.datetime :date
      t.string :frequence
      t.string :confidentialite
      t.integer :endroit_id
      t.string :categorie_event_id
      t.string :user_id

      t.timestamps
    end
  end
end
