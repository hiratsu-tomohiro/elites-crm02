class Customer < ActiveRecord::Base
    #Customer(顧客)はどこかのCompany(会社)に所属しているので`belongs_to`
    belongs_to :company
    validates :family_name, presence: true, length: {maximum: 20}
    validates :given_name,presence: true, length: {maximum: 20}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
    validates :company_id, presence: true
    
    def full_name
        family_name + given_name
    end
end
