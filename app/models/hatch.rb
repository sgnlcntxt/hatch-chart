# == Schema Information
#
# Table name: hatches
#
#  id           :integer          not null, primary key
#  end_day      :integer
#  end_month    :string
#  maximum_size :string
#  minimum_size :string
#  start_day    :integer
#  start_month  :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  bug_id       :integer
#  fishery_id   :integer
#
# Indexes
#
#  index_hatches_on_bug_id      (bug_id)
#  index_hatches_on_fishery_id  (fishery_id)
#
# Foreign Keys
#
#  bug_id      (bug_id => bugs.id)
#  fishery_id  (fishery_id => fisheries.id)
#
class Hatch < ApplicationRecord
  belongs_to :bug
  belongs_to :fishery
end
