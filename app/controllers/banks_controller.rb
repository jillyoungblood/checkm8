class BanksController < ActionController::Base
def show
  @banks = Bank.all
  @transaction = Transaction.new
end
end
