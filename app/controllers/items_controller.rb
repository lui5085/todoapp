class ItemsController < ApplicationController
    def create
        @item = Item.create(item_params)


        if @item.save
            redirect_to todo_list_path(@item.todo_list_id)
        else
            redirect_to root_path
        end
    end

    def update
        @item = Item.find(params[:id])
        if @item.update(item_params)
            redirect_to todo_list_path(@item.todo_list_id)
        else
            redirect_to root_path
        end
    end


    private

    def item_params
        params.require(:item).permit(:title, :conclued, :todo_list_id)
    end
end
