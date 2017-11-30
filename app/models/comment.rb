class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  mount_uploader :picture, PictureUploader
  acts_as_votable
  
  #validate  :picture_size

  #private

    # Validates the size of an uploaded picture.
   # def picture_size
   #   if picture.size > 5.megabytes
   #     errors.add(:picture, "should be less than 5MB")
   #   end
   # end
end
