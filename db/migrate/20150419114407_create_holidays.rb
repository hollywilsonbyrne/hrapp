class CreateHolidays < ActiveRecord::Migration
  def change
    create_table :holidays do |t|
      t.date :dateTo
      t.date :dateFrom
      t.string :Department
      t.string :Employee

      t.timestamps
    end
  end
end
