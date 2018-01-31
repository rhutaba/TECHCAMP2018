class Question < ActiveRecord::Base
  belongs_to :user
  belongs_to :group

  validates_presence_of :user_id, :text, :group_id
end
