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
require 'rails_helper'

RSpec.describe Name, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
