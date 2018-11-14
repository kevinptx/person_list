class Person < ApplicationRecord

  #Class Method:
  def self.by_last_name
    order(:last_name)
  end

  #Instance Method:
  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
