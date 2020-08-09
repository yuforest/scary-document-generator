class Document < ApplicationRecord
  validates :content, presence: true
  is_impressionable
end
