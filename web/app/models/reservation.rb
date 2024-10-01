class Reservation < ApplicationRecord
    belongs_to :user
    validates :day, presence: true
    validates :time, presence: true
    validates :start_time, presence: true
end
