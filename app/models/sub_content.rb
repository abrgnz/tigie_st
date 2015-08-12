class SubContent < ActiveRecord::Base
  belongs_to :content
  has_many :expandeds
end
