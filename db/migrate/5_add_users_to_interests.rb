class AddUsersToInterests < ActiveRecord::Migration[5.0]
  def change
    add_reference :interests, :user, foreign_key: true
  end
end
