class TransactionsController < ApplicationController
  def new
    @transaction = Transaction.new
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