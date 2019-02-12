class Event < ApplicationRecord

  # Associations

  has_many :attendances
  has_many :participants, class_name: "User", through: :attendances
  belongs_to :admin, class_name: "User"



  # Validations 
  
  validates :start_date, 
  presence: true, 
  if: :not_past_date #-> La date ne peut pas être dans le passé

  validates :duration, 
  presence: true,
  numericality: { only_integer: true },
  if: :modulo_5 #-> La durée doit être un multiple de 5
  
  validates :title,
  presence: true,
  length: {in: 5..140} #-> Le titre à entre 5 et 140 caractères

  validates :description,
  presence: true,
  length: {in: 20..1000} #-> La description à entre 20 et 1000 caractères

  validates :price, 
  presence: true,
  numericality: { only_integer: true }, 
  :inclusion => 1..1000 #-> Le prix doit être un integer entre 1 et 1000

  validates :location, 
  presence: true



  # Méthodes de validations

private

  def modulo_5
    if duration.present? && duration % 5 == 0
      return true
    else
      errors.add(:duration, 'Un multiple de 5 only please')
    end
  end

  def not_past_date
    if self.start_date.present? && self.start_date < DateTime.now
      errors.add(:date, 'Pas une date passée')
    end
  end

end