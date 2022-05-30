require_relative './account'
require_relative './statement_printer'

class Bank
    attr_reader :account

    def initialize(account = Account.new)
        @account = account
    end

    def deposit(amount)
        @account.new_transaction(:deposit, amount)
    end

    def withdrawl(amount)
        fail 'Withdrawal failed. Amount exceeds account balance' if exceeds_balance(amount)
        @account.new_transaction('withdrawl', amount)
    end

    def print_statement(printer = StatementPrinter)
        printer.to_string(@account.transactions)
    end

    private

    def exceeds_balance(amount)
        amount> @account.balance
    end


    
end