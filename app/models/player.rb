class Player < ActiveRecord::Base
  has_many :photos
  mount_uploader :image, ImageUploader
  validate  :picture_size
  has_many :results, through: :backupplayers
  has_many :backupplayers
  has_many :results, through: :chengeplayers
  has_many :chengeplayers
  has_many :results, through: :goalplayers
  has_many :goalplayers

  private

    # アップロード画像のサイズを検証する
    def picture_size
      if image.size > 5.megabytes
        errors.add(:image, "should be less than 5MB")
      end
    end
end
