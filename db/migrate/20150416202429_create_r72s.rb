class CreateR72s < ActiveRecord::Migration
  def change
    create_table :r72s do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
