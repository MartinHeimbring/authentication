require 'rails_helper'

describe User do
  context "validations" do
    it { should have_secure_password }
    it { should validate_presence_of(:password) }
    it { should ensure_length_of(:password).is_at_least(6) }
    it { should validate_presence_of(:name) }
    it { should ensure_length_of(:name).is_at_most(50) }
    it { should validate_uniqueness_of(:email) }
  end
end
