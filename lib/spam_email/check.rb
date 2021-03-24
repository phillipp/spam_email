require 'mail'
require 'public_suffix'
require 'resolv'

module SpamEmail
  def self.blacklisted? email_address
    address = Mail::Address.new(email_address)
    return false unless address.domain

    complete_domain = address.domain.downcase
    main_domain = PublicSuffix.domain(complete_domain)
    mx_complete_domain = Resolv::DNS.new.getresources(complete_domain, Resolv::DNS::Resource::IN::MX)[0].exchange.to_s
    mx_main_domain = PublicSuffix.domain(mx_complete_domain)

    (BLACKLIST & [complete_domain, main_domain, mx_complete_domain, mx_main_domain]).any?

    rescue Mail::Field::ParseError
    false
  end
end
