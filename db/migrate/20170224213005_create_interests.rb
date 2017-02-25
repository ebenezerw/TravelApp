class CreateInterests < ActiveRecord::Migration[5.0]
    def change
        create_table :interests do |t|
            t.string :traveler_name
            t.string :social_link
            t.date :start_date
            t.date :end_date
            t.text :comment
            t.references :destination, foreign_key: true

            t.timestamps
        end
    end
end
