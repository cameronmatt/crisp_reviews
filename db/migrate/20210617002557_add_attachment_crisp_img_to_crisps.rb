class AddAttachmentCrispImgToCrisps < ActiveRecord::Migration[6.1]
  def self.up
    change_table :crisps do |t|
      t.attachment :crisp_img
    end
  end

  def self.down
    remove_attachment :crisps, :crisp_img
  end
end
