class Result < ActiveRecord::Base
  has_many :photos
  has_many :players, through: :backupplayers
  has_many :players, through: :goalplayers
  has_many :backupplayers, dependent: :destroy
  has_many :chengeplayers,      dependent: :destroy
  has_many :goalplayers,      dependent: :destroy
  accepts_nested_attributes_for :backupplayers, allow_destroy: true
  accepts_nested_attributes_for :chengeplayers, allow_destroy: true
  accepts_nested_attributes_for :goalplayers, allow_destroy: true
end
