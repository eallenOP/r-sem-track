class CreateSemesters < ActiveRecord::Migration[5.1]
  def change
    create_table :semesters do |t|
      t.string :semester_num
      t.string :year
      t.date :start_date

      t.timestamps
    end
  end
end
