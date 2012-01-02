class ProcessingController < ApplicationController
  def index
	@title = "Главная страница"
	@item=Item.all
  end

  def new_record
	@title = "Создание новой записи о предмете"
	@item=Item.new
  end
  
  def create_record
	@item=Item.new(params[:item])
	if @item.save
	  redirect_to root_url, :notice => "Запись в базу данных выполнена."
	else
	  redirect_to root_url, :notice => "Ошибка записи в базу данных."
	end
  end

  def extract_record
	@title = "Показать запись"
	@item=Item.find(1)
  end

  def show_record
	@item=Item.find(params[:item][:id])
	redirect_to root_url, :notice => "#{@item.name} #{@item.description} #{@item.owner} #{@item.holder}"
  end

end
