class Course < ActiveRecord::Base
	
      validates :nombre, presence: true,
                    length: { minimum: 1 }
end
