module StatementPrinter
    def self.to_string(transactions)
        @strings = ["date || credit || debit || balance"]
        transactions.reverse.map do |transaction|
            if transaction.type == 'credit'
                @strings << "#{transaction.date} || #{transaction.amount}.00 || || #{transaction.balance}.00"
            else
                @strings << "#{transaction.date} || || #{transaction.amount}.00 || #{transaction.balance}.00"
            end
        end
        puts @strings.join("\n").strip
    end
end