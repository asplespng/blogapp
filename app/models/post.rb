class Post < ActiveRecord::Base
  belongs_to :author
  accepts_nested_attributes_for :author, reject_if: :all_blank
  validates_presence_of :title, :description
end
