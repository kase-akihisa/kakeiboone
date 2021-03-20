class Spending < ApplicationRecord
    
    validates :user_id, presence: true
    validates :cost_house, presence: true
    validates :cost_communications, presence: true
    validates :cost_utility, presence: true
    validates :cost_travel, presence: true
    validates :cost_item, presence: true
    validates :cost_other, presence: true
    validates :date, presence: true
    
    belongs_to :user
end
