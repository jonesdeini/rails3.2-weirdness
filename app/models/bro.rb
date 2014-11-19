class Bro < ActiveRecord::Base

  scope :hey_bro, -> { where(nil) }

  scope :with_cool_story, -> { where(cool_story: true) }

end
