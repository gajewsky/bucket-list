class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.integer :goodreads_id
      t.string :title
      t.string :image_url
      t.integer :num_pages
      t.integer :publication_year
      t.float :average_rating
      t.string :author
      t.float :user_rate
      t.date :started_at
      t.date :read_at
      t.timestamps
    end
  end
end
