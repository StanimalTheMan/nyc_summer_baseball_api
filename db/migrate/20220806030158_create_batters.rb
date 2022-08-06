class CreateBatters < ActiveRecord::Migration[6.0]
  def change
    create_table :batters do |t|
      t.integer :yearID
      t.integer :PA
      t.integer :AB
      t.integer :R
      t.integer :H
      t.integer :"2B"
      t.integer :"3B"
      t.integer :HR
      t.integer :RBI
      t.integer :SB
      t.integer :CS
      t.integer :BB
      t.integer :SO
      t.belongs_to :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
