class PortfoliosController < ApplicationController
    def index
       @port = Portfolio.all 
    end
    def new
        @port = Portfolio.new
    end
   def create
    @port = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

     respond_to do |format|
       if @port.save
         format.html { redirect_to portfolios_path, notice: 'Bat Portfolio posted' }
       else
         format.html { render :new }
       end
     end
   end
     
     def edit
         @port = Portfolio.find(params[:id])
     end
     
     def update
          @port = Portfolio.find(params[:id])
         
    respond_to do |format|
      if @port.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to portfolios_path, notice: 'Bat Portfolio updated.' }
      else
        format.html { render :edit }
      end
    end
     end
end