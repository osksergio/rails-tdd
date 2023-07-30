require 'pessoa'

describe 'Atributos' do

  before(:all) do
    puts '>>>>> ANTES de TODOS os testes (main)'
  end

  after(:all) do
		puts '>>>>> DEPOIS de TODOS os testes (main)'
	end

  #before(:each) do
  #  @pessoa = Pessoa.new
  #  puts '::::: ANTES de CADA teste'
  #end

  #after(:each) do
  #  @pessoa.nome = 'Sem Nome!'
  #  puts '::::: DEPOIS de CADA teste'
  #end

  around(:each) do |teste|
		@pessoa = Pessoa.new
		puts '::::: ANTES de CADA teste'
    teste.run
		@pessoa.nome = 'Sem Nome!'
		puts "::::: DEPOIS de CADA teste #{@pessoa.inspect}"
  end

	it 'have_attributes 1' do
    @pessoa.nome = 'Sergio'
    @pessoa.idade = 45

		expect(@pessoa).to have_attributes(nome: a_string_starting_with('S'), idade: (be >= 20))
  end

	it 'have_attributes 2' do
    @pessoa.nome = 'Chipilique'
    @pessoa.idade = 25

		expect(@pessoa).to have_attributes(nome: a_string_starting_with('C'), idade: (be >= 20))
	end
end