class CreateCrisps < ActiveRecord::Migration[6.1]
  def change
    create_table :crisps do |t|
      t.string :name

      t.timestamps
    end
  end
end
