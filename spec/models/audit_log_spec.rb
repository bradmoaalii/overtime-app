require 'rails_helper'

RSpec.describe AuditLog, type: :model do
  before do
  	@Audit_log = FactoryBot.create(:audit_log)
  end

  describe 'creation' do
  	it 'can be properly created' do
  		expect(@audit_log).to be_valid

  	end
  end

  describe 'validations' do
  	it 'it should be required to have a user association' do
  		@Audit_log.user_id = nil
  		expect(@Audit_log).to_not be_valid
  	end

  	xit 'it should always have a status' do

  	end

  	xit 'it should be required to have a start date' do

  	end

  	xit 'it should have start date equal to 6 days priot' do

  	end
  end
end
