class Cart < ApplicationRecord

    has_many :line_items, dependent: :destroy
    has_many :items, through: :line_items
    belongs_to :user
end
