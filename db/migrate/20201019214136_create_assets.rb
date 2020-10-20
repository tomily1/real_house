# frozen_string_literal: true

class CreateAssets < ActiveRecord::Migration[6.0]
  def change
    create_table :assets do |t|
      t.string :owner
      t.string :address

      t.string :email
      t.index :email

      t.string :type
      t.index :type

      t.integer :rooms
      t.integer :units
      t.integer :sqmt
      t.integer :floors
      t.integer :shops
      t.integer :parking

      t.boolean :air_cond

      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
