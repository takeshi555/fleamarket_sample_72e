class Destination < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :prefecture, optional: true
  has_many :destinations
  validates :post_code, :city, :block_num, presence: true
  validates :first_name, presence: true, format: { with: /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/}
  validates :last_name, presence: true, format: { with: /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/}
  validates :first_name_kana, presence: true, format: { with: /[\p{katakana} ー－&&[^ -~｡-ﾟ]]+/,message: "全角カタカナのみが使用できます。" }
  validates :last_name_kana, presence: true, format: { with: /[\p{katakana} ー－&&[^ -~｡-ﾟ]]+/,message: "全角カタカナのみが使用できます。" }
end
