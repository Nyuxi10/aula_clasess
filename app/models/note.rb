
class Note < ActiveRecord::Base 

  has_many :subjects     
  validates_numericality_of :valor, :greater_than_or_equal_to => 1, :less_than => 10,
                    length: { minimum: 1 }
  validates :valor, presence: true

  end

  