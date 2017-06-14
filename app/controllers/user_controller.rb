class UserController < ApplicationController
    # GET /orders
    # GET /orders.json
    def index
      @users = User.all
    end

    # GET /orders/1
    # GET /orders/1.json
    def show
    end

    # GET /orders/new
    def new
      @user = User.new
    end

    # GET /orders/1/edit
    def edit
    end

end
