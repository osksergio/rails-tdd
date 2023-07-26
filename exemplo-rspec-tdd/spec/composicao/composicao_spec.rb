describe 'Ruby on Rails' do
  it { is_expected.to start_with('Ruby').and end_with('Rails') }
  it { expect(fruta).to eq('banana').or eq('laranja').or eq('uva') }

  # Podemos usar os helpers de módulo p/ não poluir os testes
  # ver pasta "exemplo-rspec-tdd/helpers"
  #
  # Estes helper seria arbitrário (dentro do teste)
  #def fruta
  #  %w(banana laranja uva).sample
  #end
end
