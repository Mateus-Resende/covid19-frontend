# frozen_string_literal: true

class CreateCases < ActiveRecord::Migration[6.0]
  def change
    create_table :cases do |t|
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
