class Chapter < ActiveRecord::Base
  has_many :sub_chapters
end
