class AddAttachmentToEmail < ActiveRecord::Migration
  def self.up
    change_table :emails do |t|
      t.attachment :attachment
    end
  end

  def self.down
    drop_attached_file :emails, :attachment
  end
end
