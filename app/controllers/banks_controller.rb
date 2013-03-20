class BanksController < ApplicationController
  def show
    @transaction = Transaction.new
    @bank = Bank.find(params[:id])
  end
  def new
    @bank = Bank.new
  end
  def create
    bank = Bank.create(params[:bank])
    @banks = Bank.order(:name)
  end
  def showgraph
    render :json => Bank.first.transactionrecord(@auth)
  end
end
