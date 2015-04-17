class CreateUrug2s < ActiveRecord::Migration
  def change
    create_table :urug2s do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
