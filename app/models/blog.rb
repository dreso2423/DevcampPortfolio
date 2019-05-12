class Blog < ApplicationRecord
  enum status: { draft: 0 , published: 1 }#When ever we create a new blog post .
  extend FriendlyId
  friendly_id :title, use: :slugged
end
