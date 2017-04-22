class CreateUnis < ActiveRecord::Migration[5.0]
  def change
    create_table :unis do |t|
      t.string :title

      t.timestamps
    end
  end
end
