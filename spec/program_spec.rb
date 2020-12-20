require 'program.rb'

describe Program do
  program = Program.new

  it 'SCE-1-1-1: OrderAndDedup([9,6,3,2,12]) debe retornar [2,3,6,9,12]' do
    expect(program.OrderAndDedup([9,6,3,2,12])).to eq [2,3,6,9,12]
  end
end