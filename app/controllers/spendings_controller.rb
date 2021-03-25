class SpendingsController < ApplicationController
    def index
        @spending = Spending.all
    end
    
    def new
        @spending=Spending.new
    end
    def create
        @spending = current_user.spendings.new(spending_params)
        if @spending.save
            redirect_to spendings_path, success: '成功しました'
        else
            flash.now[:danger] = '失敗しました'
            render :new
        end
    end
    
  private
  def spending_params
    params.require(:spending).permit(:cost_house, :cost_utility, :cost_communications, :cost_travel, :cost_item, :cost_other, :date)
  end
end
