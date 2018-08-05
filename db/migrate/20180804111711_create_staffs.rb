class CreateStaffs < ActiveRecord::Migration[5.1]
  def change
    create_table :staffs do |t|
      t.string :name,       null: false, index: true
      t.integer :assessment
      t.string :position
      t.datetime :birthday
      t.timestamps
    end
  end
end
