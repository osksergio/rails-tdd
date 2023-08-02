require 'pessoa'

describe 'Atributos' do

  let(:pessoa) { Pessoa.new }

  it 'have_attributes 1' do
    pessoa.nome = 'Sergio'
    pessoa.idade = 45
    expect(pessoa).to have_attributes(nome: a_string_starting_with('S'), idade: (be >= 20))
  end

  it 'have_attributes 2' do
    pessoa.nome = 'Chipilique'
    pessoa.idade = 25
    expect(pessoa).to have_attributes(nome: a_string_starting_with('C'), idade: (be >= 20))
  end
end