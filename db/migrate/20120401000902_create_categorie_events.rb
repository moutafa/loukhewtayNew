class CreateCategorieEvents < ActiveRecord::Migration
  def change
    create_table :categorie_events do |t|
      t.string :libelle

      t.timestamps
    end
  end
end
