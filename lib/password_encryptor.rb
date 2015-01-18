require 'bcrypt'

class PasswordEncryptor
  VERSION = "1.0.0"

  def self.encrypt plain_text
    PasswordEncryptor.new(plain_text).encrypt
  end

  def initialize(plain_text)
    @password = plain_text
  end

  def encrypt
    BCrypt::Password.create(@password, cost: cost)
  end

  private

  def cost
    if defined?(Rails) && Rails.env.test?
      BCrypt::Engine::MIN_COST
    else
      BCrypt::Engine.cost
    end
  end
end

