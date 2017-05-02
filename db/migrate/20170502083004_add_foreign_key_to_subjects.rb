class AddForeignKeyToSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :subject_area_id, :integer
  end
end
