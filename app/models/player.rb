class Player < ActiveRecord::Base
  has_many :photos
  mount_uploader :image, ImageUploader
  validate  :picture_size

  private

    # アップロード画像のサイズを検証する
    def picture_size
      if image.size > 5.megabytes
        errors.add(:image, "should be less than 5MB")
      end
    end
end
