class CreatePitchers < ActiveRecord::Migration[6.0]
  def change
    create_table :pitchers do |t|
      t.int :yearID
      t.int :G
      t.int :GS
      t.int :W
      t.int :L
      t.int :SV
      t.int :CG
      t.float :IP
      t.int :BF
      t.int :H
      t.int :R
      t.int :ER
      t.int :BB
      t.int :K
      t.int :HBP
      t.int :2B
      t.int :3B
      t.int :HR
      t.float :RA
      t.belongs_to :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
