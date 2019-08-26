require 'mail'
require 'public_suffix'

module SpamEmail
  def self.blacklisted? email_address
    address = Mail::Address.new(email_address)
    return false unless address.domain

    complete_domain = address.domain.downcase
    listed = BLACKLIST.include?(complete_domain)

    unless listed
      main_domain = PublicSuffix.domain(complete_domain)
      if complete_domain != main_domain
        listed = BLACKLIST.include?(main_domain)
      end
    end

    listed    
  rescue Mail::Field::ParseError
    false
  end
end
