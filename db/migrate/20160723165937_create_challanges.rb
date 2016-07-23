class CreateChallanges < ActiveRecord::Migration[5.0]
  def change
    create_table :challanges do |t|
      t.string :title
      t.text :description
      t.date :completed_at
      t.timestamps
    end
  end
end
