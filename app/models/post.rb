class Post < ApplicationRecord
  belongs_to :user, required: true
  validates :user, presence: true
  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
  validates :image, :attachment_presence => true
  validates_attachment :image, :content_type => { :content_type => /[jpg|png|jpeg|gif]/ }
# validates_attachment :image, :content_type => { :content_type => "image/jpg" }



end
