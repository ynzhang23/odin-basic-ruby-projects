#spec/caesar-cipher_spec.rb

require './lib/caesar-cipher.rb'

describe 'caesar_cipher' do

  it 'encodes lower case letters' do
    expect(caesar_cipher('hello', 3)).to eql('ebiil')
  end
  xit 'encodes upper case letters' do
  end
  xit 'does not encode numbers and symbols' do
  end
  xit 'encodes both upper case and lower case letters' do
  end
end