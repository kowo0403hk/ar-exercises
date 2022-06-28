class Store < ActiveRecord::Base
  has_many :employees

  validates :name, presence: true, length: {minimum: 3}
  validates :annual_revenue, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validates :mens_apparel, :womens_apparel, inclusion:{in: [true, false], message: "- Please input true or false."}

  # IMPORTANT! if we use customer validation method, the keyword validate has to be without s at the end.
  validate :at_least_one_type_of_apparel

  def at_least_one_type_of_apparel
    if !mens_apparel.present? && !womens_apparel.present?
      errors.add("Store","must carry at least one of the men's or women's apparel")
    end
  end

end


