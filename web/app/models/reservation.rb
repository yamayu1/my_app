class Reservation < ApplicationRecord
    validates :user_id, presence: true
    validates :date, presence: true
    belongs_to :user
end
