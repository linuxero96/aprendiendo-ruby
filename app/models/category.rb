# == Schema Information
#
# Table name: categories
#
#  id          :bigint           not null, primary key
#  name        :string(255)
#  description :text(65535)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Category < ApplicationRecord
    has_many :tasks

    validates_uniqueness_of :name, :description
end
