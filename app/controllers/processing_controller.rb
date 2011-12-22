class ProcessingController < ApplicationController
  def index
	@item=Item.all
  end

  def new_record
	@item=Item.new
  end
  
  def create_record
	@item=Item.new(params[:item])
	if @item.save
	  @text= "Запись в базу данных выполнена."
	else
	  @text= "Ошибка записи в базу данных."
	  #render :template => 'new_record.html.erb', :handler => :erb
	end
  end

  def extract_record
	@item=Item.find(1)
  end

  def show_record
	@item=Item.find(params[:item][:id])
  end

end
