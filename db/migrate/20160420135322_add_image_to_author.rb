class AddImageToAuthor < ActiveRecord::Migration
  def change
    add_attachment :authors, :image
  end
end
