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

  	it 'it should always have a status' do
  		@Audit_log.user_id = nil
  		expect(@Audit_log).to_not be_valid
  	end

  	it 'it should be required to have a start date' do
  		@Audit_log.user_id = nil
  		expect(@Audit_log).to_not be_valid
  	end

  	it 'it should have start date equal to 6 days prior' do
  		new_audit_log = Audit_log.create(user.last.id)
  		expect(new_audit_log.start_date).to eq(Date.today - 6.days)
  	end
  end
end
