class Product < ActiveRecord::Base
	default_scope :order => 'title'
  attr_accessible :description, :image_url, :price, :title
  validates :title, :description, :image_url, :price, :presence => true
  validates :price, :numericality => {:greate_than_or_equal_to => 0.01}
  validates :title, :uniqueness => true
  validates :image_url, :format => {
  	:with		=>%r{\.(gif|jpg|png)$}i,
  	:message	=>'must be a URl for GIF, JPG of PNG image. '
  }
end
