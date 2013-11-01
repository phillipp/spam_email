require "spam_email/version"
require "spam_email/domains"
require 'active_model'
require 'active_model/validations'
require 'mail'

I18n.load_path += Dir.glob(File.expand_path('../../config/locales/**/*',__FILE__))

class SpamEmailValidator < ActiveModel::EachValidator
  def validate_each(record,attribute,value)
    begin
      m = Mail::Address.new(value)
      return if m.domain.nil?
      r = SpamEmail::BLACKLIST.include?(m.domain.downcase)
    rescue Exception => e
      r = false
    end
    record.errors[attribute] << (options[:message] || I18n.t(:blacklisted, scope: "spam_email.validations.email")) if r
  end
end