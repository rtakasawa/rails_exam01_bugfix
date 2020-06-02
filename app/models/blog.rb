class Blog < ApplicationRecord
# ErrorCause：commentが誤り
# FixReason：blogは複数のcommentを持っている意味なのでcommentsに修正
# dependent: :destroyも追加
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :content, presence: true
end
