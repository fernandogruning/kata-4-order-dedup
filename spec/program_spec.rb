require 'program.rb'

describe Program do
  program = Program.new

  it 'SCE-1-1-1: OrderAndDedup([9,6,3,2,12]) debe retornar [2,3,6,9,12]' do
    expect(program.OrderAndDedup([9,6,3,2,12])).to eq [2,3,6,9,12]
  end

  it 'SCE-1-1-2: OrderAndDedup([9,8,7,6,5,4,3,2,1]) debe retornar [1,2,3,4,5,6,7,8,9]' do
    expect(program.OrderAndDedup([9,8,7,6,5,4,3,2,1])).to eq [1,2,3,4,5,6,7,8,9]
  end

  it 'SCE-1-1-3: OrderAndDedup([1,1,2,2,3,3,4,4,5,5,6,6,7,7,7]) debe retornar [1,2,3,4,5,6,7]' do
    expect(program.OrderAndDedup([1,1,2,2,3,3,4,4,5,5,6,6,7,7,7])).to eq [1,2,3,4,5,6,7]
  end

  it 'SCE-1-1-4: OrderAndDedup([1,2,88,1024,1000,0]) debe retornar [0,1,2,88,1000,1024]' do
    expect(program.OrderAndDedup([1,2,88,1024,1000,0])).to eq [0,1,2,88,1000,1024]
  end

  it 'SCE-1-1-5: OrderAndDedup([7,7,4,4,2,2,5,6,5,6,1,3,1]) debe retornar [1,2,3,4,5,6,7]' do
    expect(program.OrderAndDedup([7,7,4,4,2,2,5,6,5,6,1,3,1])).to eq [1,2,3,4,5,6,7]
  end
end