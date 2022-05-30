require './lib/transaction'

describe Transaction do
    subject { Transaction.new(type, amount, balance, @date) }
    let(:type) { double :type }
    let(:amount) { double :amount }
    let(:balance) { double :balance }
    @date = Time.now.strftime("%d/%m/%Y")

        describe 'initialize' do

            it 'stores the type' do
                expect(subject.type).to eq type
            end

            it 'stores the amount' do
                expect(subject.amount).to eq amount
            end

            it 'stores the balance' do
                expect(subject.balance).to eq balance
            end

            it 'is initialized with current date' do
                expect(subject.date).to eq @date
            end
     
        end
    end