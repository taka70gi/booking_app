class Room < ApplicationRecord
    belongs_to :user
    has_many :reservations
    has_one_attached :image

    validates :room_name, uniqueness: true, presence: true
    validates :introduction, presence: true
    validates :address, uniqueness: true, presence: true
    validates :price, presence: true
end
