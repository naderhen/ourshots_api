class CreateGroupShots < ActiveRecord::Migration
  def change
    create_table :group_shots do |t|
      t.integer :group_id
      t.date :date

      t.timestamps
    end
  end
end
