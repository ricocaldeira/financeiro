class Contact < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname
  validates :firstname, presence: true
  validates :lastname, presence: true

  def name
  	"#{self.firstname} #{self.lastname}"
  end

end
