class Stock < ApplicationRecord
  has_many :user_stocks
  has_many :users, through: :user_stocks

  validates :name, :ticker, presence: true


  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(
        publishable_token: 'Tpk_e42681b177114e53964bbc3f6c5f08b3' ,
        secret_token: 'Tsk_a862b7e442594c999e7a24bd16d3a4a8',
        endpoint: 'https://sandbox.iexapis.com/v1'
    )
    # client.price(ticker_symbol) #implied return since last statement
    begin
      new(ticker: ticker_symbol, name: client.company(ticker_symbol).company_name , last_price: client.price(ticker_symbol))
    rescue => exception
      return nil
    end


  end
end
