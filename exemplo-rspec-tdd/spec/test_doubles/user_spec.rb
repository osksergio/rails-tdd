describe 'Test Double' do
  it '--' do
    user = double('User')
    allow(user).to receive_messages(name: 'Sergio', password: 'secret')
    user.name
    user.password
  end
end
