class Cinema < ApplicationRecord
  has_many :reviews, dependent: :destroy
end
