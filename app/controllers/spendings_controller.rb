class SpendingsController < ApplicationController
    def index
        @spending = Spending.all
    end
    
    def new
        @spending=Spending.new
    end
    def create
          cost = spending_params[:cost_house].to_i + spending_params[:cost_utility].to_i + spending_params[:cost_communications].to_i + spending_params[:cost_travel].to_i + spending_params[:cost_item].to_i + spending_params[:cost_other].to_i
          @spending = current_user.spendings.new(cost: cost, date: "#{params["date(1i)"]}-#{params["date(2i)"]}-#{params["date(3i)"]}")
        if @spending.save
            @pie_chart_value = [["家賃", spending_params[:cost_host]], ["水道・光熱費", spending_params[:cost_utility]], ["通信費", spending_params[:cost_communications]], ["交通費", spending_params[:cost_travel]], ["日用品費", spending_params[:cost_item]], ["その他", spending_params[:cost_other]]]
            render :index and return
        else
            flash.now[:danger] = '失敗しました'
            render :new and return
        end
    end
    
  private
  def spending_params
    params.require(:spending).permit(:cost_house, :cost_utility, :cost_communications, :cost_travel, :cost_item, :cost_other, :date)
  end
end
