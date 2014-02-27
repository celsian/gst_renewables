class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  default_scope order("email")

  def self.search query
    query = query.downcase
    where("email LIKE :query OR reference_number LIKE :query", query: "%#{query}%")
  end
         
end
