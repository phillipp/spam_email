require 'mail'
require 'public_suffix'

module SpamEmail
  def self.blacklisted? email_address
    address = Mail::Address.new(email_address)
    return false unless address.domain
    completeDomain = address.domain.downcase
    listed = BLACKLIST.include?(completeDomain)
    if !listed
        mainDomain = PublicSuffix.domain(completeDomain)
        if completeDomain != mainDomain
            listed = BLACKLIST.include?(mainDomain)
        end
    end
    return listed    
  rescue Mail::Field::ParseError
    false
  end
end
