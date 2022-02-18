class Book < ApplicationRecord
    belongs_to :user ,optional:true
  
  validates :title, presence: true #空でないように設定
  validates :body, presence: true, length: { maximum: 200 } #空でない、かつ最大200文字までに設定
  
end
