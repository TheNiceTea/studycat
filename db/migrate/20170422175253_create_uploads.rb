class CreateUploads < ActiveRecord::Migration[5.0]
  def change
    create_table :uploads do |t|
      t.text :title
      t.text :note

      t.timestamps
    end
  end
end
