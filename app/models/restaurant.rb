class Restaurant < ActiveRecord::Base

  REST_TYPES = [
    'American (New)', 'American (Traditional)', 'Asian Fusion', 'Barbeque', 'Bars', 'Breakfast & Brunch', 'Buffet',
    'Burgers', 'Chicken Wings', 'Chinese', 'Cuban', 'Czech', 'Delis', 'Diners', 'Fast Food', 'French', 'German', 'Greek',
    'Hungarian', 'Indian', 'Indonesian', 'Irish', 'Israeli', 'Italian', 'Japanese', 'Jewish', 'Korean', 'Lebanese',
    'Mexican', 'Pakistani', 'Pizza', 'Russian', 'Sandwiches', 'Seafood', 'Scandinavian', 'Scottish', 'Spanish', 'Street',
    'Supermarket', 'Thai', 'Turkish', 'Ukrainian', 'Vietnamese', 'Other'
  ]

  RATINGS = [
    1, 2, 3, 4, 5
  ]

  validates :name, presence: true
  validates :user, presence: true
  validates :rest_type, inclusion: { in: REST_TYPES }
  validates :address, presence: true
  validates :dined_at, presence: true
  validates :rating, inclusion: { in: RATINGS }

  belongs_to :user

end
