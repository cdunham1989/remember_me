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

    describe '.create' do
        it 'creates a new memory' do
            Memory.create(title: 'Day at the Beach', description: 'A day at the beach in Brighton with friends')

            expect(Memory.all).to include 'Day at the Beach'
        end
    end
end