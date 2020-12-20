require 'program.rb'

describe Program do
  program = Program.new

  it 'SCE-1-1-1: OrderAndDedup([9,6,3,2,12]) debe retornar [2,3,6,9,12]' do
    expect(program.OrderAndDedup([9,6,3,2,12])).to eq [2,3,6,9,12]
  end

  it 'SCE-1-1-2: OrderAndDedup([9,8,7,6,5,4,3,2,1]) debe retornar [1,2,3,4,5,6,7,8,9]' do
    expect(program.OrderAndDedup([9,8,7,6,5,4,3,2,1])).to eq [1,2,3,4,5,6,7,8,9]
  end
end