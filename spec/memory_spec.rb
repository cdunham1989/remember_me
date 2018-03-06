require 'memory'

describe Memory do
    describe '.all' do
        it 'returns all memories' do
            memories = Memory.all

            expect(memories).to include("Holiday to Mexico")
            expect(memories).to include("Our Anniversary")
            expect(memories).to include("Christmas at Home")
        end
    end
end