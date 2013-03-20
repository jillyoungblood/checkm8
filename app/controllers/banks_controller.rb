class BanksController < ApplicationController
  def show
    @transaction = Transaction.new
    @bank = Bank.find(params[:id])
  end
  def showgraph
    render :json => Bank.first.transactionrecord
  end
end
