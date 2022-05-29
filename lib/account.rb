require_relative './transaction'

class Account

    attr_reader :balance, :transaction

    def initialize
        @balance = 0
        @transactions = []
    end

    def deposit(amount, transaction = new_transaction)
        transaction.deposit(amount)
        @transactions << transaction
        increase_balance(amount)
        "Succesful deposit of #{amount}"
    end

    def withdrawl(amount, transaction = new_transaction)
        transaction.withdrawl(amount)
        @transactions << transaction
        decrease_balance(amount)
        "Succesful withdrawl of #{amount}"
    end
    
    def transactions
        @transactions
    end

    private

    def new_transaction
        Transaction.new(@balance)
    end

    def increase_balance(amount)
        @balance += amount
    end

    def decrease_balance(amount)
        @balance -= amount
    end
end