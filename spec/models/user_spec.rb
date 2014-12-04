require 'rails_helper'
require 'spec_helper'

describe User do
  let(:user) { User.new(
    email:    "a@b.com",
    name:     "Bookis",
    password: "password!",
    uid:      "1234"
    )
  }

  describe "validations" do
    it "is valid" do
      expect(user).to be_valid
    end
    it "requires an email" do
      user.email = nil
      expect(user).to be_invalid
    end

    it "requires a name" do
      user.name = nil
      expect(user).to be_invalid
    end

    it "requires a password" do
      user.password = nil
      expect(user).to be_invalid
    end

  end

  # describe ".initialize_from_omniauth" do
  #   let(:user) { User.new(
  #     email:    "a@b.com",
  #     name:     "Bookis",
  #     password: "password!",
  #     uid:      "1234"
  #     )
  #   }
  #   # let(:user) { User.find_or_create_from_omniauth(OmniAuth.config.mock_auth[:twitter]) }
  #
  #   it "creates a valid user" do
  #     puts user.inspect
  #     expect(user).to be_valid
  #   end
  #
  #   context "when it's invalid" do
  #     it "returns nil" do
  #       user = User.find_or_create_from_omniauth({"uid" => "123", "info" => {}})
  #       expect(user).to be_nil
  #     end
  #   end
  # end

end
