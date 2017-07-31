class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies,
            reject_if: lambda { |attrs| attrs['name'].blank?}
end    
