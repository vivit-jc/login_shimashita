# encoding: utf-8

class User < ActiveRecord::Base

  def at_j
    self.attendance ? "在室" : ""
  end

end
