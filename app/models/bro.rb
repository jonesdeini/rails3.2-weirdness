class Bro < ActiveRecord::Base
  attr_accessible :cool_story

  scope :hey_bro, -> do
    where(nil)
  end

end
