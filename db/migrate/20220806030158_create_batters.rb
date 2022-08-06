class CreateBatters < ActiveRecord::Migration[6.0]
  def change
    create_table :batters do |t|
      t.int :yearID
      t.int :PA
      t.int :AB
      t.int :R
      t.int :H
      t.int :2B
      t.int :3B
      t.int :HR
      t.int :RBI
      t.int :SB
      t.int :CS
      t.int :BB
      t.int :SO
      t.belongs_to :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
