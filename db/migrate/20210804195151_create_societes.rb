class CreateSocietes < ActiveRecord::Migration[6.0]
  def change
    create_table :societes do |t|
      t.string :nom
      t.text :description
      t.text :category 
      t.string :codepostal
      t.string :ville

      t.timestamps
    end
   
  end
end
