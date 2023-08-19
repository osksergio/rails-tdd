describe 'Test Double' do
  it '--' do
    user = double('User')
    allow(user).to receive(:name).and_return('Sergio')
    allow(user).to receive(:password).and_return('secret')
    #outra forma de permitir
    #allow(user).to receive_messages(name: 'Sergio', password: 'secret')
    user.name
    user.password
  end
end
