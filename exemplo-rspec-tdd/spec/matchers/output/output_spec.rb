describe 'Matcher output' do
  it { expect{ puts "sergio" }.to output.to_stdout }
  it { expect{ print "sergio" }.to output("sergio").to_stdout }
  it { expect{ puts "sergio oseko" }.to output(/sergio/).to_stdout }

  it { expect{ warn "sergio" }.to output.to_stderr }
  it { expect{ warn "sergio" }.to output("sergio\n").to_stderr }
  it { expect{ warn "sergio oseko" }.to output(/sergio/).to_stderr }
end