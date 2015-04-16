class CreateR7s < ActiveRecord::Migration
  def change
    create_table :r7s do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
