class Purpose < ApplicationRecord
    
    validates :cost, presence: true
    validates :date, presence: true
    
    has_many :spendings
    
end