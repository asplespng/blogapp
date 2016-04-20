class Author < ActiveRecord::Base
  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
  validates_attachment :image,
  :content_type => { :content_type => "image/png" },
  :size => { :in => 0..100.kilobytes }
  validates :first_name, presence: true
end
