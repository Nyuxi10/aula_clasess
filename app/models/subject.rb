

class Subject < ActiveRecord::Base
  belongs_to :note	
  validates :nombre, presence: true,length: { minimum: 3 }

  
end
