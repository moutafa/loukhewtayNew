class CreateCategorieEndroits < ActiveRecord::Migration
  def change
    create_table :categorie_endroits do |t|
      t.string :libelle

      t.timestamps
    end
  end
end
