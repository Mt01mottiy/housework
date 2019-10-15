class CreateWorkdetails < ActiveRecord::Migration[5.2]
  def change
    create_table :workdetails do |t|

      t.timestamps
      t.text :task
      t.string :limit_date
    end
  end
end
