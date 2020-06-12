require 'twitter'
class UsersController < ApplicationController


  def my_portfolio
    @tracked_stocks = current_user.stocks
  end

  def sharesocial

  end

end
