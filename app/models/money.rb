require 'byebug'

class Money < ActiveRecord::Base

  def self.balance
    self.count
  end

  def self.totalcash
    self.all.inject(0) { |sum, number| sum + number.amount.to_f }
  end
  
end
