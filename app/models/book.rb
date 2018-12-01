class Book < ApplicationRecord
  has_many :users
  has_many :audio_summaries
end
