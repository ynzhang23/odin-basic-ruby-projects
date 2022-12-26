#spec/caesar-cipher_spec.rb

require './lib/caesar-cipher.rb'

describe 'caesar_cipher' do
  it 'encodes lower case letters' do
    expect(caesar_cipher('hello', 3)).to eq('ebiil')
  end
  it 'encodes upper case letters' do
    expect(caesar_cipher('HELLO', 3)).to eq('EBIIL')
  end
  it 'does not encode numbers and symbols' do
    expect(caesar_cipher('H!@eLLo, hello', 3)).to eq('E!@bIIl, ebiil')
  end
end