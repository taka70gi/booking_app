class User < ApplicationRecord
        # Include default devise modules. Others available are:
        # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
        has_one_attached :image
        devise :database_authenticatable, :registerable,
                :recoverable, :rememberable, :validatable
        has_many :rooms
        has_many :reservations

        validates :name, presence: true
end
