# frozen_string_literal: true

require "spec_helper"

RSpec.describe Bigid::Auth do
  describe "AUTH_ENDPOINT" do
    subject { defined? Bigid::Auth::AUTH_ENDPOINT }

    it { expect(subject).to be_truthy }
  ***REMOVED***

  describe "TOKEN_EXPIRATION" do
    subject { defined? Bigid::Auth::TOKEN_EXPIRATION }

    it { expect(subject).to be_truthy }
  ***REMOVED***

  describe ".configure" do
    before do
      Bigid.configuration = nil
      ENV.clear
    ***REMOVED***

    subject { Bigid.configuration }

    context "when configuration is defined" do
      before do
        ***REMOVED***
          config.username = "username_value"
          config.password = "password_value"
        ***REMOVED***
      ***REMOVED***

      it { expect(subject).not_to be_nil }

      it { expect(subject.username).to eq("username_value") }

      it { expect(subject.password).to eq("password_value") }
    ***REMOVED***

    context "when configuration is not defined" do
      it { expect(subject).not_to be_nil }

      it { expect(subject.username).to be_nil }

      it { expect(subject.password).to be_nil }
    ***REMOVED***

    context "when its configured by envs" do
      before do
        ENV["BIGID_USERNAME"] = "username_value"
        ENV["BIGID_PASSWORD"] = "password_value"
      ***REMOVED***

      it { expect(subject).not_to be_nil }

      it { expect(subject.username).to eq("username_value") }

      it { expect(subject.password).to eq("password_value") }
    ***REMOVED***

    context "when its envs configured and configs setted" do
      before do
        ENV["BIGID_USERNAME"] = "username_value"
        ENV["BIGID_PASSWORD"] = "password_value"

        ***REMOVED***
          config.username = "username_value2"
          config.password = "password_value2"
        ***REMOVED***
      ***REMOVED***

      it { expect(subject).not_to be_nil }

      it { expect(subject.username).to eq("username_value2") }

      it { expect(subject.password).to eq("password_value2") }
    ***REMOVED***

    describe "I18n calls" do
      it { expect(I18n.default_locale).to eq(:en) }

      it { expect(I18n.config.available_locales).to contain_exactly(:en, :'pt-BR') }
    ***REMOVED***
  ***REMOVED***
***REMOVED***
