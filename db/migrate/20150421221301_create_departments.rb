class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.string :position
      t.string :status

      t.timestamps
    end
  end
end
