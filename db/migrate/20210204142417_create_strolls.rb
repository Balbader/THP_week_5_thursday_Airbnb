class CreateStrolls < ActiveRecord::Migration[6.1]
  def change
    create_table :strolls do |t|
      t.belongs_to :city, index: true
      t.belongs_to :dogsitter, index: true
      t.belongs_to :dog, index: true

      t.timestamps
    end
  end
end
