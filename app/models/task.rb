# == Schema Information
#
# Table name: tasks
#
#  id          :bigint           not null, primary key
#  name        :string(255)
#  description :text(65535)
#  due_date    :date
#  category_id :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Task < ApplicationRecord
  belongs_to :category

  validates_uniqueness_of :name, :description
end
