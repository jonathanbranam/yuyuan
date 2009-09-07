class WordListItemsController < ApplicationController

  def destroy
    @word_list_item = WordListItem.find(params[:id])
    @word_list = @word_list_item.word_list
    @word_list_item.destroy

    respond_to do |format|
      format.html { redirect_to(word_list_path(@word_list)) }
      format.xml  { head :ok }
    end
  end

end
