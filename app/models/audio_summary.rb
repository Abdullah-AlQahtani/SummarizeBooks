class AudioSummary < ApplicationRecord
  belongs_to :user
  belongs_to :book
  mount_uploader :audio, AudioUploader
end
