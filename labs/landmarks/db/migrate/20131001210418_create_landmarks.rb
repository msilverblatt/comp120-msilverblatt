class CreateLandmarks < ActiveRecord::Migration
  def change
    create_table :landmarks do |t|
      t.float :lng
      t.float :lat
      t.string :name
      t.text :info

      t.timestamps
    end
  end
end
