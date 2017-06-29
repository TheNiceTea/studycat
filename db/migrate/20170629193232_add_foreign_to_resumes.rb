class AddForeignToResumes < ActiveRecord::Migration[5.0]
  def change
    add_column :resumes, :subject_id, :string
  end
end
