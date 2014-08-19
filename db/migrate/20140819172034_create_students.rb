class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :address
      t.integer :applications_count

      t.timestamps
    end
  end
end
