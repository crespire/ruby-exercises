#spec/caesar.spec

require './caesar'

describe Caesar do
  subject { Caesar.new }

  describe '#cipher' do
    it 'returns a ciphered text' do
      expect(subject.cipher('attackatdawn', 5)).to eql('fyyfhpfyifbs')
    end

    it 'returns a ciphered text, regardless of case' do
      expect(subject.cipher('atTAckatDAwn', 5)).to eql('fyYFhpfyIFbs')
    end

    it 'returns cipihered text, with puncutation unchanged' do
      expect(subject.cipher('please,attack!', 5)).to eql('uqjfxj,fyyfhp!')
    end

    it 'returns ciphered text, with whitespace unchanged' do
      expect(subject.cipher('please, attack!', 5)).to eql('uqjfxj, fyyfhp!')
    end

    it 'returns unciphered text with no shift variable provided' do
      expect(subject.cipher('hello world!')).to eql('hello world!')
    end

    it 'ciphers with large shift factor' do
      expect(subject.cipher('abcd', 50)).to eql('yzab')
    end

    it 'ciphers with negative shift factor' do
      expect(subject.cipher('xyz', -1)).to eql('wxy')
    end
  end
end
