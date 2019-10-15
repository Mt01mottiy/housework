
require 'rails_helper'

RSpec.describe User, type: :model do 
  it 'nameの欄が空白の時エラーを起こす' do
    user = User.new(myouzi: '望月',namae:'',email:'mmmoo@test.com',password:'test5',password_confirmation:'test5')
    expect(user).not_to be_valid
  end
  
end