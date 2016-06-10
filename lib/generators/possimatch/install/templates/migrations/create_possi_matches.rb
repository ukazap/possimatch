class CreatePossiMatches < ActiveRecord::Migration
  def self.up
    create_table :possi_matches do |t|
      t.integer  :source_id
      t.integer  :from_source_id
      t.integer  :to_source_id
      t.decimal  :score
      t.timestamps
    end
    add_index :possi_matches, [:source_id, :from_source_id, :to_source_id, :score], name: "idx_possi_matches"
  end

  def self.down
    drop_table :possi_matches
  end
end