class Transaction
    attr_reader :type, :amount, :date, :balance
    
    def initialize(type,amount,balance, date = Time.now.strftime("%d/%m/%Y"))        @type
        @type = type
        @amount = amount
        @date = date
        @balance = balance
    end

end