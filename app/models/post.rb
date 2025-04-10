class Post < ApplicationRecord
  has_one_attached :photo
  has_one_attached :video
end
