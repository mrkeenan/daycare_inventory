class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :size
      t.integer :child_id
      t.integer :total_cnt
      t.integer :current_cnt
      t.integer :min_cnt
      t.string :weather_type
      t.string :description

      t.timestamps

    end
  end
end
