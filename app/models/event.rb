class Event < ApplicationRecord
    belongs_to :chef, class_name: "User"
    belongs_to :customer, class_name: "User"
    has_many :reviews, dependent: :destroy
    has_many :users, through: :reviews
end
