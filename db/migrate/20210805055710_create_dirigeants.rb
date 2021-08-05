class CreateDirigeants < ActiveRecord::Migration[6.0]
  def change
    create_table :dirigeants do |t|
      t.string :name
      t.string :sexe
      t.string :email

      t.timestamps
    end
  end
end
