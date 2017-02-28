class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :link
      t.string :gender
      t.string :locale
      t.string :image
      t.string :age_range

      t.timestamps
    end
  end
end
