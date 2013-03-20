class BanksController < ApplicationController
def show
  @bank = Bank.find(params[:id])
  @deposits = Transaction.where
end
def showgraph
  render :json => Bank.first.transactionrecord
end
end
