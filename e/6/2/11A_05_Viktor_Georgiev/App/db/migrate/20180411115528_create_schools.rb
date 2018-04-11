class CreateSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :schools do |t|
      t.integer :schoolday
      t.integer :teacherid

      t.timestamps
    end
  end
end
