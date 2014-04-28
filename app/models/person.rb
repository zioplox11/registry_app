class Person < ActiveRecord::Base
    validates :first_name, :presence => true

    def formal_name
      if(self.gender == 'male')
        return 'Mr ' + self.first_name + ' ' + self.last_name
      end
    end



end
