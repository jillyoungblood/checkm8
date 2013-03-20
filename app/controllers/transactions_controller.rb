class TransactionsController < ApplicationController
  def new
    @transaction = Transaction.new
  end
  def create
    transaction = Transaction.create(params[:transaction])
    @bank = Bank.where("#{params[:transaction][:from]}" ).first
    @bank.transactions << transaction
  end
  def trans
    @trans= Transaction.new(user_id:30)#user_id:@auth.id)
  end
  def tc #nicks create
    t = Transaction.create(params[:transaction])
    t.dt = Time.now
    t.save
  end
end