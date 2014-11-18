class Bro < ActiveRecord::Base
  attr_accessible :cool_story

  scope :hey_bro, -> { where(nil) }

  scope :with_cool_story, -> { where(cool_story: true) }

end
