require 'rspec'

RSpec.describe ChangeMachine do 
  describe '#change' do
    it 'should give 25 cents' do
    changemachine = ChangeMachine.new
    expect(changemachine.change(119)).to eq(25)


    end



  end


  
end
  