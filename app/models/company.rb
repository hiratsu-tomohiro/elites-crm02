class Company < ActiveRecord::Base
    #Company(会社)には複数のCustomer(顧客)が紐づくので`has_many`
    has_many :customers
end
