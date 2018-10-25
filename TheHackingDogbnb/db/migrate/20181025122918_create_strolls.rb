class CreateStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :strolls do |t|
      t.references :dog, foreign_key: true, index: true
      t.references :dogsitter, foreign_key: true, inde: true
      t.references :city, foreign_key: true, index: true
      t.datetime :date
      t.timestamps
    end
  end
end
