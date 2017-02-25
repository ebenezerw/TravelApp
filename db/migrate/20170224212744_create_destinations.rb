class CreateDestinations < ActiveRecord::Migration[5.0]
    def change
        create_table :destinations do |t|
            t.string :place
            t.string :traveler_name
            t.string :social_link
            t.date :start_date
            t.date :end_date
            t.text :intro

            t.timestamps
        end
    end
end
