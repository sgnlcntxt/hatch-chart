# == Schema Information
#
# Table name: matches
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  bug_id     :integer
#  fly_id     :integer
#
# Indexes
#
#  index_matches_on_bug_id  (bug_id)
#  index_matches_on_fly_id  (fly_id)
#
# Foreign Keys
#
#  bug_id  (bug_id => bugs.id)
#  fly_id  (fly_id => flies.id)
#
class Match < ApplicationRecord
  belongs_to :fly
  belongs_to :bug
end
