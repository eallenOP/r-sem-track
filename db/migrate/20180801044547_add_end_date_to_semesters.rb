class AddEndDateToSemesters < ActiveRecord::Migration[5.1]
  def change
    add_column :semesters, :end_date, :date
  end
end
