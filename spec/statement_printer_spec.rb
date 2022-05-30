require './lib/statement_printer'

describe StatementPrinter do
  describe '#to_string' do
    @date = Time.now.strftime("%d/%m/%Y")
    let(:transaction1) { double :transaction, 
                                date: @date, 
                                type: :credit, 
                                amount: 10, 
                                balance: 10 }

    let(:transaction2) { double :transaction, 
                                date: @date, 
                                type: 'debit', 
                                amount: 5, 
                                balance: 5 }

    let(:transactions) { [transaction1, transaction2] }

  it 'displays users transaction details including date, transaction type, amount, and balance' do
    statement = "date || credit || debit || balance\n#{@date} || || 5.00 || 5.00\n#{@date} || 10.00 || || 10.00\n"
    expect { subject.to_string(transactions) }.to output(statement).to_stdout
  end
end

end 