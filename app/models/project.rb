class Project < ActiveRecord::Base
  has_many :pv_commissions
  has_and_belongs_to_many :users
  validates :name, presence: true
  validates :name, uniqueness: true

  default_scope { order("name") }

  def error_messages
    messages = ""
    errors.full_messages.each do |message|
      messages += message + "."
    end
    messages
  end
  
end
