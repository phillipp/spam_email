require 'mail'

module SpamEmail
  def self.blacklisted? email_address
    address = Mail::Address.new(email_address)
    return false unless address.domain

    BLACKLIST.include?(address.domain.downcase)
  rescue Mail::Field::ParseError
    false
  end
end
