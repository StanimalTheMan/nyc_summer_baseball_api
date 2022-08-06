class CreatePitchers < ActiveRecord::Migration[6.0]
  def change
    create_table :pitchers do |t|
      t.integer :yearID
      t.integer :G
      t.integer :GS
      t.integer :W
      t.integer :L
      t.integer :SV
      t.integer :CG
      t.float :IP
      t.integer :BF
      t.integer :H
      t.integer :R
      t.integer :ER
      t.integer :BB
      t.integer :K
      t.integer :HBP
      t.integer :"2B"
      t.integer :"3B"
      t.integer :HR
      t.float :RA
      t.belongs_to :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
