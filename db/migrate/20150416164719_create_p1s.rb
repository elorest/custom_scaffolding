class CreateP1s < ActiveRecord::Migration
  def change
    create_table :p1s do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
