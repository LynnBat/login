class User
  attr_reader :name, :email, :password

  def initialize
    @name              = Faker::Name.name
    @email             = Faker::Internet.unique.safe_email
    @password          = Faker::Internet.password
  end
end
