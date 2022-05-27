class Account

    attr_reader :balance

    def initialize
        @balance = 0
        @transactions = []
    end

    def deposit(amount, transaction = new_transaction)
        @balance += amount
        transaction.deposit(amount)
        @transactions << transaction
        "Succesful deposit of #{amount}"
    end

    def withdrawl(amount, transaction = new_transaction)
        @balance -= amount
        transaction.withdrawl(amount)
        @transactions << transaction
        "Succesful withdrawl of #{amount}"
    end
    
    def transactions
        @transactions
    end

    private

    def new_transaction
        Transaction.new
    end
end