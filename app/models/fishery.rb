# == Schema Information
#
# Table name: fisheries
#
#  id          :integer          not null, primary key
#  description :string
#  location    :string
#  name        :string
#  photo       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Fishery < ApplicationRecord
  has_many  :hatches, dependent: :destroy
  has_many :bugs, through: :hatches, source: :bug
end
