class Comment < ActiveRecord::Base
  belongs_to :customer
  belongs_to :user
  #入力必須バリデーション
  validates :body,        presence: true, length: {maximum: 200}
  validates :customer_id, presence: true
  validates :user_id,     presence: true
end
