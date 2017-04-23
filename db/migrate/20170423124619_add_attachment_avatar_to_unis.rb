class AddAttachmentAvatarToUnis < ActiveRecord::Migration
  def self.up
    change_table :unis do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :unis, :avatar
  end
end
