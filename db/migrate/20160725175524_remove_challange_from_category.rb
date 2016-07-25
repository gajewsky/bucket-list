class RemoveChallangeFromCategory < ActiveRecord::Migration[5.0]
  def change
    remove_column :categories, :challange_id
    change_table :challanges do |t|
      t.references :category, index: true
    end
  end
end
