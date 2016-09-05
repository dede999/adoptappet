class AddAttachmentPictureToShelters < ActiveRecord::Migration
  def self.up
    change_table :shelters do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :shelters, :picture
  end
end
