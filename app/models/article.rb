class Article < ApplicationRecord
  include ActiveModel::Serializers::Xml
  include ActiveModel::Serializers::JSON

  serialize :preferences, JSON

  validates :title, presence: true
  # validates :body, presence: true, length: { minimum: 10 }
  validates :title, format: { with: /\A[0-9]+\z/,
    message: ": input only number, please" }
end
