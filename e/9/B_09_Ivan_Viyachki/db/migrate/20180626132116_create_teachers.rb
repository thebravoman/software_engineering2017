class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :second_name
      t.string :email
      t.string :subject

      t.timestamps
    end
  end
end
