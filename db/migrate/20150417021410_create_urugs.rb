class CreateUrugs < ActiveRecord::Migration
  def change
    create_table :urugs do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
