class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :color
  belongs_to :type
  has_one_attached :image

  #選択肢が「---」の時は保存できないようにする
  validates :category_id, numericality: { other_than: 1 } 
  validates :color_id, numericality: { other_than: 1 } 

end
