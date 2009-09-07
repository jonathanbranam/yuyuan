class WordListsController < ApplicationController
  def index
    @word_lists = WordList.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @word_lists }
    end
  end

  def show
    @word_list = WordList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @word_list }
    end
  end

  def remove_word_from_list
    @word_list_item = WordListItem.find(params[:id])
    @word_list = @word_list_item.word_list

    @word_list_item.destroy

    respond_to do |format|
      format.html { redirect_to(word_list_path(@word_list)) }
      format.xml  { head :ok }
    end

  end

  def add_word_to_list
    @word_list = WordList.find(params[:word_list_id])

    @word = ChineseWord.find(params[:word_id])

    if not @word_list or not @word
      redirect_to '/search'
      return
    end

    new_item = WordListItem.new
    new_item.word_list = @word_list
    new_item.chinese_word = @word
    new_item.save

    redirect_to word_list_path(@word_list)

  end

  def destroy
    @word_list = WordList.find(params[:id])
    @word_list.destroy

    respond_to do |format|
      format.html { redirect_to(word_lists_url) }
      format.xml  { head :ok }
    end
  end

  def edit
    @chinese_word = ChineseWord.find(params[:id])
  end

  def new
    @word_list = WordList.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @word_list }
    end
  end

  def create
    @word_list = WordList.new(params[:word_list])

    respond_to do |format|
      if @word_list.save
        flash[:notice] = 'Word List was successfully created.'
        format.html { redirect_to(@word_list) }
        format.xml  { render :xml => @word_list, :status => :created, :location => @word_list }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @word_list.errors, :status => :unprocessable_entity }
      end
    end
  end

end
