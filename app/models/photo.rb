class Photo < ActiveRecord::Base
  belongs_to :player
  belongs_to :result
  mount_uploader :image, ImageUploader
  # validate  :picture_size

  # ユーザー名による絞り込み
  scope :get_by_player_id, ->(player_id) {
  where(player_id: player_id)
  }
  # 性別による絞り込み
  scope :get_by_result_id, ->(result_id) {
  where(result_id: result_id)
  }

  private

    # アップロード画像のサイズを検証する
    # def picture_size
    #   if image.size > 5.megabytes
    #     errors.add(:image, "should be less than 5MB")
    #   end
    # end
end
