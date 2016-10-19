class AddUserToMetrics < ActiveRecord::Migration[5.0]
  def change
    add_reference :activities, :user, index: true
    add_reference :beers, :user, index: true
    add_reference :books, :user, index: true
    add_reference :movies, :user, index: true
    add_reference :challanges, :user, index: true
  end
end
