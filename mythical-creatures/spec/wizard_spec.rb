require 'rspec'
require './lib/wizard'

RSpec.describe Wizard do
  it 'has a name' do
    wizard = Wizard.new('Eric')
    expect(wizard.name).to eq('Eric')
  end

  it 'has a different name' do
    wizard = Wizard.new('Alex')
    expect(wizard.name).to eq('Alex')
  end

  it 'is bearded by default' do
    wizard = Wizard.new('Ben')
    expect(wizard.bearded).to be true
  end

  it 'is not always bearded' do
    wizard = Wizard.new('Valerie', bearded: false)
    expect(wizard.bearded).to be false
  end

  it 'has root powers' do
    wizard = Wizard.new('Stella', bearded: false)
    expect(wizard.incantation('chown ~/bin')).to eq('sudo chown ~/bin')
  end

  it 'has many root powers' do
    wizard = Wizard.new('Sal', bearded: true)
    expect(wizard.incantation('rm -rf /home/mirandax')).to eq('sudo rm -rf /home/mirandax')
  end

  it 'starts rested' do
    luis = Wizard.new('Luis', bearded: false)

    expect(luis.rested?).to be(true)
  end

  it 'can cast spells' do
    luis = Wizard.new('Luis', bearded: false)

    expect(luis.cast).to eq("MAGIC MISSILE!")
  end

  it 'gets tired after casting three spells' do
    luis = Wizard.new('Luis', bearded: false)

    luis.cast
    expect(luis.rested?).to be(true)
    luis.cast
    expect(luis.rested?).to be(false)
  end
end
