class BanksController < ApplicationController
def show
  @bank = Bank.find(params[:id])
  @transactions = Transaction.where
end
end
