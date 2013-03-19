class BanksController < ActionController::Base
def show
  @bank = Bank.find(params[:id])
  @deposits = Transaction.where
end
end
