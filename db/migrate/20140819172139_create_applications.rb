class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.references :student, index: true
      t.integer :score

      t.timestamps
    end
  end
end
