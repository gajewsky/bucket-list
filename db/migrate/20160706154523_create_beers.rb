class CreateBeers < ActiveRecord::Migration[5.0]
  def change
    create_table :beers do |t|
      t.integer :untappd_id, index: true
      t.string :name
      t.string :label_url
      t.string :country
      t.string :brewery
      t.string :style
      t.float :abv
      t.float :ibu
      t.float :user_rate
      t.date :drink_date

      t.timestamps
    end
  end
end
