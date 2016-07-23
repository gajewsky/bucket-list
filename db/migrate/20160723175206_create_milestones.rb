class CreateMilestones < ActiveRecord::Migration[5.0]
  def change
    create_table :milestones do |t|
      t.string :title
      t.text :description
      t.date :completed_at
      t.belongs_to :challange, index: true
      t.timestamps
    end
  end
end
