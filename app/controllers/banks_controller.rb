class BanksController < ActionController::Base
  def show
    @transaction = Transaction.new
    @bank = Bank.find(params[:id])
  #  @deposits = Transaction.where
  end
end