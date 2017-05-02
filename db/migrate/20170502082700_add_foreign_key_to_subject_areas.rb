class AddForeignKeyToSubjectAreas < ActiveRecord::Migration[5.0]
  def change
    add_column :subject_areas, :uni_id, :integer
  end
end
