require 'spec_helper'

describe SpamEmailValidator do
  record_class = Class.new do
    include ActiveModel::Validations

    def self.model_name
      ActiveModel::Name.new(self, nil, "temp_record")
    end

    attr_accessor :email
    validates :email, :spam_email => true
  end

  shared_examples_for "Validating emails" do
    before { I18n.locale = locale }
    let(:invalid_domain) { "10minutemail.com" }

    describe "#validate_each" do
      subject { record_class.new }
      before { subject.email = email }
      before { subject.valid? }

      context "when email domain is listed in in blacklisted domains" do
        let(:email) { "johndoe@#{invalid_domain}" }

        it "should not be valid" do
          subject.should_not be_valid
          subject.errors[:email].should == errors
        end
      end

      context "when upcase provided email domain is listed in in blacklisted domains" do
        let(:email) { "johndoe@#{invalid_domain.upcase}" }

        it "should not be valid" do
          subject.should_not be_valid
          subject.errors[:email].should == errors
        end
      end

      context "when email domain is not listed in in blacklisted domains" do
        let(:email) { 'johndoe@lima-city.de' }

        it "should be valid" do
          subject.should be_valid
          subject.errors[:email].should be_empty
        end
      end
    end
  end
  
  context "german translation" do
    let!(:locale) { :de }
    let!(:errors) { [ "ist ein gesperrter E-Mail-Provider" ] }
    it_should_behave_like "Validating emails"
  end

  context "english translation" do
    let!(:locale) { :en }
    let!(:errors) { [ "is a blacklisted email provider" ] }
    it_should_behave_like "Validating emails"
  end

  context "french translation" do
    let!(:locale) { :fr }

    # sorry, google translate ;-D
    let!(:errors) { [ "est un fournisseur e-mail interdit" ] }
    it_should_behave_like "Validating emails"
  end
end
