require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Input validation' do
    it 'should have unique email and username' do
      User.create(name: 'rickson', username: 'rickson22')
      new_user_two = User.create(name: 'john doe', username: 'rickson22')
      expect(new_user_two.errors.messages[:username]).to eq ['has already been taken']
    end
  end
end
