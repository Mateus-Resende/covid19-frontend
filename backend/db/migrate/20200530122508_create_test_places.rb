# frozen_string_literal: true

class CreateTestPlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :test_places do |t|
      t.float :lat
      t.float :lng
      t.text :name
      t.text :image_url

      t.timestamps
    end
  end
end
