class Recombiner < ActiveRecord::Base
  belongs_to :pv_commission
  has_many :pv_array_tests, dependent: :destroy

  validates :name, :pv_commission_id, presence: true
  validate :name_uniqueness_for_pv_commission

  default_scope { order("name") }

  mount_uploader :recombiner_exterior_pic, CombinerUploader
  mount_uploader :recombiner_interior_pic, CombinerUploader
  mount_uploader :recombiner_flir_pic, CombinerUploader

  def name_uniqueness_for_pv_commission
    names = []
    PvCommission.find(pv_commission_id).recombiners.each do |recombiner|
      unless id == recombiner.id
        names << recombiner.name
      end
    end

    if names.include?(name)
      errors.add(:base, 'Recombiners must have unique names within a PV Commission')
    end
  end

  def error_messages
    messages = ""
    errors.full_messages.each do |message|
      messages += message + "."
    end
    messages
  end

end
