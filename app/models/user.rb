class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
  enum gender: {man: 0, woman: 1}
  enum body_shape: {'細め': 0, 'やや細め': 1, '普通': 2, 'ぽっちゃり': 3, '筋肉質': 4}
  enum age: {'18~24': 0, '25~29': 1, '30~34': 2, '35~39': 3, '40~': 4}
  enum job: {'IT-engineer': 0, 'IT-relation': 1, 'Web-relation': 2, 'others': 3}
  enum income: {'~300': 0, '300~500':1, '500~700':2, '700~1000':3, '1000~2000':4, '2000~':5}

  # step2入力項目
  validate :name, {presence: true, length: {maximum:6}}, on: :step3
  validates :gender, inclusion: { in: ['man', 'woman'] }
  validates :age, inclusion: {in: ['18~24', '25~29', '30~34', '35~39', '40~']}
  # step3入力項目
  validates :body_shape, inclusion: {in: ['細め', 'やや細め', '普通', 'ぽっちゃり', '筋肉質']}
  validates :job, inclusion: {in: ['It-engineer', 'IT-relation', 'Web-relation', 'others']}
  validates :income, inclusion: {in: ['~300', '300~500', '500~700', '700~1000', '1000~2000', '2000~']}
  validates :prefecture_id, numericality: { greater_than_or_equal_to:1 ,less_than_or_equal_to:47}
end