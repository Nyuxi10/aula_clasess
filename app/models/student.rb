class Student < ActiveRecord::Base
	
      validates :nombre, presence: true,
                    length: { minimum: 4 }
end
      
