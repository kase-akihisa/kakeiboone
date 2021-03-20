class SpendingsController < ApplicationController
    def new
        @spending=Spending.new
    end
end
