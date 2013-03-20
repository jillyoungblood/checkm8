class TransactionsController < ApplicationController
  def new
    @transaction = Transaction.new
  end
  def create
    transaction = Transaction.create(params[:transaction])
    @bank = Bank.where("#{params[:transaction][:from]}" ).first
    @bank.transactions << transaction
  end
end