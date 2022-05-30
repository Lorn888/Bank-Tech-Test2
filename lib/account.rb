require_relative './transaction'

class Account

    attr_reader :balance, :transaction

    def initialize
        @balance = 0
        @transactions = []
    end

    def new_transaction(type, amount, transaction_class = Transaction)
        update_balance(type, amount)
        @transactions << transaction_class.new(type, amount, @balance)
        "#{type.to_s.capitalize} of £#{amount} was successful"
    end
    
    def transactions
        @transactions
    end

    private

    def update_balance(type, amount)
        type == :deposit ? @balance += amount : @balance -= amount
    end

    def add_transaction_to_log(transaction)
        @transactions << transaction
    end
end