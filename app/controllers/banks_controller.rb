class BanksController < ApplicationController
def show
  @bank = Bank.find(params[:id])
end
def showgraph
  render :json => Bank.first.transactionrecord
end
end
