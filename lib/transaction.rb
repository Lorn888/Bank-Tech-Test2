class Transaction
    attr_reader :type, :amount, :date
    
    def initialize(date = Time.now.strftime("%d/%m/%Y"))
        @type
        @amount
        @date = date
    end

    def deposit(amount)
        @type = 'credit'
        @amount = amount
    end

    def withdrawl(amount)
        @type = 'debit'
        @amount = amount
    end
end