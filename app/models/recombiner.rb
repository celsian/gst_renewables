class Recombiner < ActiveRecord::Base
  belongs_to :pv_commission
  has_many :pv_array_tests, dependent: :destroy

  validates :name, :pv_commission_id, presence: true
  validate :name_uniqueness_for_pv_commission

  default_scope order("name")

  def name_uniqueness_for_pv_commission
    names = []
    PvCommission.find(pv_commission_id).recombiners.each do |recombiner|
      names << recombiner.name
    end

    if names.include?(name)
      errors.add(:base, 'Recombiners must have unique names within a PV Commission.')
    end
  end

end
