class HomeController < ApplicationController
def index
  @banks = Bank.order(:name)
end

end