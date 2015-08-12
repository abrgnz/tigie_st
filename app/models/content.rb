class Content < ActiveRecord::Base
  belongs_to :sub_chapter
  has_many :sub_contents
end
