# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :store
      t.string :name
      t.string :image_url
      t.integer :status
      t.float :price
      t.string :url
      t.string :category

      t.timestamps
    end
  end
end
