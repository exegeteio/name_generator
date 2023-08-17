# == Schema Information
#
# Table name: names
#
#  id         :integer          not null, primary key
#  gender     :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Name < ApplicationRecord
  validates :name, uniqueness: {
    scope: :gender,
    message: "Name already exists for this gender",
  }

  scope :random, -> { order("RANDOM()") }
  scope :female, -> { where(gender: :female) }
  scope :male, -> { where(gender: :male) }
end
