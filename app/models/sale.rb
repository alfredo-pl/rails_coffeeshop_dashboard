class Sale < ApplicationRecord
 
    scope :group_origin, -> (number){ group(:origin).where('date_time > ?', number.month.ago).order(date_time: :desc).count}
    scope :group_mix, -> (number){ group(:mix).where('date_time > ?', number.month.ago).order(date_time: :desc).count}

end
