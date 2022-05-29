class Transaction
    attr_reader :type, :amount, :date, :balance
    
    def initialize(current_balance = 0, date = Time.now.strftime("%d/%m/%Y"))        @type
        @amount
        @date = date
        @balance = current_balance
    end

    def deposit(amount)
        @type = 'credit'
        @amount = amount
        @balance += amount
    end

    def withdrawl(amount)
        @type = 'debit'
        @amount = amount
        @balance -= amount
    end
end