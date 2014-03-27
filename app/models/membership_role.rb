class MembershipRole < ActiveRecord::Base
  belongs_to :membership
  belongs_to :instrument
end
