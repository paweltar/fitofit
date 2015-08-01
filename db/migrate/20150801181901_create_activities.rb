class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :address_start
      t.string :address_end
      t.float :latitude
      t.float :longitude
      t.float :lat_end
      t.float :long_end
      t.float :distance
      t.datetime :date

      t.timestamps null: false
    end
  end
end
