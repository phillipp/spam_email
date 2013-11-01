require 'spec_helper'

describe SpamEmailValidator do
  record_class = Class.new do
    include ActiveModel::Validations
    attr_accessor :email
    validates :email, :spam_email => true
  end

  shared_examples_for "Validating emails" do
    before { I18n.locale = locale }

    describe "#validate_each" do
      subject { record_class.new }
      before { subject.email = email }
      before { subject.valid? }

      context "email domain is listed in in blacklisted domains" do
        let(:email) { 'johndoe@12minutemail.com' }
        its(:valid?) { should be_false }
        specify { subject.errors[:email].should == errors }
      end

      context "upcase provided email domain is listed in in blacklisted domains" do
        let(:email) { 'johndoe@12MINUTEMAIL.com' }
        its(:valid?) { should be_false }
        specify { subject.errors[:email].should == errors }
      end

      context "email domain is not listed in in blacklisted domains" do
        let(:email) { 'johndoe@lima-city.de' }
        its(:valid?) { should be_true }
        specify { subject.errors[:email].should be_empty }
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