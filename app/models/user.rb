# encoding:utf-8
class User < ActiveRecord::Base
  has_one :app

  validates :email, :presence=> { message: '不能为空' }, :uniqueness => { message: '已经存在' }

  def error
    errors.values.join('\n')
  end
end