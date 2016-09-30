class Backupplayer < ActiveRecord::Base
  belongs_to :result
  belongs_to :player
end
