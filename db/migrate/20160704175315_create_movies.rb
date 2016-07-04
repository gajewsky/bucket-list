class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :imdb_id, index: true
      t.string :title
      t.string :director
      t.float :user_rate
      t.float :imdb_rate
      t.integer :runtime
      t.integer :year
      t.string :genres
      t.string :url
      t.date :seen_date

      t.timestamps
    end
  end
end
