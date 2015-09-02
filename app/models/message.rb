class Message < ActiveRecord::Base
  #名前は必須かつ20文字以内
  validates :name , length: { maximum: 20 } , presence: true
  #年齢は必須かつ整数
  validates :age , numericality:{ only_integer:true }, presence:true
  #性別は必須
  validates :sex , presence:true
  #内容は必須かつ2文字以上30文字以下
  validates :body , length: {minimum: 2 , maximum: 30 } , presence: true
end
