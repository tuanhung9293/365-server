class Article < ApplicationRecord
   mount_uploader :picture, PictureUploader
   validate  :picture_size
   def item_params
    params.permit(:name, :picture, :content) 
  end
  def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end
end
