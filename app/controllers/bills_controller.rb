class BillsController < ApplicationController
    def index
        @bills = Bill.all
    end

    def new
        @bill = Bill.new
        @categories = Category.all
    end

    def create
        @bill = Bill.new(bills_params)
        respond_to do |format|
            if @bill.save
                format.html {redirect_to bills_url}
            end
        end
    end

    private
        def bills_params
            params.require(:bill).permit(:name, :value, :category_id)
        end
 
end
