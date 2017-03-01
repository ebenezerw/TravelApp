class AddUsersToDestinations < ActiveRecord::Migration[5.0]
  def change
    add_reference :destinations, :user, foreign_key: true
  end
end
