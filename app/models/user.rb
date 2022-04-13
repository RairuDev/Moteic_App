class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
  enum gender: {man: 0, woman: 1}
  enum body_shape: {'細め': 0, 'やや細め': 1, '普通': 2, 'ぽっちゃり': 3, '筋肉質': 4}
  enum age: {'18~24歳': 0, '25~29歳': 1, '30~34歳': 2, '35~39歳': 3, '40歳~': 4}
  enum job: {'IT-engineer': 0, 'IT-relation': 1, 'Web-relation': 2, 'others': 3}
  enum income: {'~300万': 0, '300~500万':1, '500~700万':2, '700~1000万':3, '1000~2000万':4, '2000万~':5}

  validates :name, {presence: true, length: {maximum:6}}
  validates :gender, inclusion: { in: ['man', 'woman'] }
  validates :body_shape, inclusion: {in: ['細め', 'やや細め', '普通', 'ぽっちゃり', '筋肉質']}
  validates :age, inclusion: {in: ['18~24歳', '25~29歳', '30~34歳', '35~39歳', '40歳~']}
  validates :job, inclusion: {in: ['It-engineer', 'IT-relation', 'Web-relation', 'others']}
  validates :income, inclusion: {in: ['~300万', '300~500万', '500~700万', '700~1000万', '1000~2000万', '2000万~']}
  validates :prefecture_id, numericality: { greater_than_or_equal_to:1 ,less_than_or_equal_to:47}
end