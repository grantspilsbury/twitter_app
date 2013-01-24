# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#

require 'spec_helper'

describe User do
  before { @user = User.new(name: "Example user", email: "example@example.com", password: "password", password_confirmation: "password") }
  subject { @user }
  
  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  
  it { should be_valid }
  
  describe "when name is not present" do
    before { @user .name = " " }
    it { should_not be_valid }
  end
  
  describe "when email is not present" do
    before { @user .email = " " }
    it { should_not be_valid }
  end
end
