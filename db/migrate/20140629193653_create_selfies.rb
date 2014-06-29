class CreateSelfies < ActiveRecord::Migration
  def change
    create_table :selfies do |t|
      t.integer :user_id
      t.integer :group_shot_id

      t.timestamps
    end
  end
end
