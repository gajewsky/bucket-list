class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.integer :strava_id
      t.string :name
      t.float :distance
      t.integer :elapsed_time
      t.string :activity_type
      t.date :start_date
      t.float :average_speed
      t.float :average_heartrate
      t.float :max_heartrate


      t.timestamps
    end
  end
end
