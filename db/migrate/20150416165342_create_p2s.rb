class CreateP2s < ActiveRecord::Migration
  def change
    create_table :p2s do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
