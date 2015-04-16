class CreateP3s < ActiveRecord::Migration
  def change
    create_table :p3s do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
