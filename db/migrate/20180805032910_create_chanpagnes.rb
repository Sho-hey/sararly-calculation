class CreateChanpagnes < ActiveRecord::Migration[5.1]
  def change
    create_table :chanpagnes do |t|
      t.string :name, null: false, index: true
      t.integer :price, null: false
      t.integer :normal, null: false
      t.integer :special, null: false

      t.timestamps
    end
  end
end
