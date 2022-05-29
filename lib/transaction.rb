class Transaction
    attr_reader :type, :amount, :date, :balance
    
    def initialize(date = Time.now.strftime("%d/%m/%Y"))
        @type
        @amount
        @date = date
        @balance = 0
    end

    def deposit(amount)
        @type = 'credit'
        @amount = amount
        @balance += amount
    end

    def withdrawl(amount)
        @type = 'debit'
        @amount = amount
    end
end