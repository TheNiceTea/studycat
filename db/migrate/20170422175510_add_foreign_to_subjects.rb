class AddForeignToSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :uni_id, :integer
  end
end
