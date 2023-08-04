describe 'Matcher output' do
  it { expect(puts "sergio").to output.to_stdout }
end