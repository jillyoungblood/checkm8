class TransactionsController < ApplicationController
  def new
    @transaction = Transaction.new
  end
  def trans
    @trans= Transaction.new
  end
  def tc #nicks create
    t = Transaction.create(params[:transaction])
    t.dt = Time.now
    binding.pry
    t.save
  end
end