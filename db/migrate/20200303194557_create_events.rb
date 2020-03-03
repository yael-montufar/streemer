class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.datetime :starts_at
      t.datetime :ends_at
      t.string :location
      t.float :longitude
      t.float :latitude
      t.references :performer_profile, foreign_key: true

      t.timestamps
    end
  end
end
