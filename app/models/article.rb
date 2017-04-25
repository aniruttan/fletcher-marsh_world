class Article < ActiveRecord::Base
  belongs_to :categories

  scope :active, where('active = ?', true)
  scope :alphabetical, order('name')

  validates_presence_of :title
  validates_presence_of :content

end
