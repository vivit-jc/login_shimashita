# encoding: utf-8

require 'spec_helper'

describe UsersController do

  describe "index" do
    before do
      User.create(name: "abc", attendance: true)
      User.create(name: "def", attendance: false)
    end
    it "returns http success" do
      get "index"
      expect(response).to be_success
    end
    it "Usersの情報が全て取得できている" do
      get "index"
      expect(assigns[:users].size).to eq(User.count)
      assigns[:users].each do |user|
        expect(user.name).not_to be_nil
        expect(user.attendance).not_to be_nil
        expect(user.respond_to?(:memo)).to be_true
      end
    end
  end
end