class CreateSubjectAreas < ActiveRecord::Migration[5.0]
  def change
    create_table :subject_areas do |t|
      t.string :title

      t.timestamps
    end
  end
end
