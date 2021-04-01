require "spam_email/version"
require "spam_email/blacklist"
require 'spam_email/check'
require 'active_model'
require 'active_model/validations'

I18n.load_path += Dir.glob(File.expand_path('../../config/locales/**/*',__FILE__))

class SpamEmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    if SpamEmail.blacklisted?(value)
      message = (options[:message] || I18n.t(:blacklisted, scope: 'spam_email.validations.email'))
      record.errors.add(attribute, :blacklist, message: message)
    end
  end
end
