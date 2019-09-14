class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :miyouzi
      t.string :namae
      
      
     
      
      t.timestamps
    end
  end
end
