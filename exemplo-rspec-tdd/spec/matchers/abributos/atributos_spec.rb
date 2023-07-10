require 'pessoa'

describe 'Atributos' do
	it 'have_attributes' do
		pessoa = Pessoa.new
		pessoa.nome = 'Sergio'
		pessoa.idade = 45

		expect(pessoa).to have_attributes(
			nome: a_string_starting_with('S'), idade: (be >= 20))
	end
end