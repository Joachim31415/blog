class Entry < ActiveRecord::Base
  validates_presence_of :title
  belongs_to :user, foreign_key: :user_id
end
