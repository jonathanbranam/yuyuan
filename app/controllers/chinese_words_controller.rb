class ChineseWordsController < ApplicationController
  # GET /chinese_words
  # GET /chinese_words.xml
  def index
    @chinese_words = ChineseWord.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @chinese_words }
    end
  end

  # GET /chinese_words/1
  # GET /chinese_words/1.xml
  def show
    @chinese_word = ChineseWord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @chinese_word }
    end
  end

  # GET /chinese_words/new
  # GET /chinese_words/new.xml
  def new
    @chinese_word = ChineseWord.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @chinese_word }
    end
  end

  # GET /chinese_words/1/edit
  def edit
    @chinese_word = ChineseWord.find(params[:id])
  end

  # POST /chinese_words
  # POST /chinese_words.xml
  def create
    @chinese_word = ChineseWord.new(params[:chinese_word])

    respond_to do |format|
      if @chinese_word.save
        flash[:notice] = 'ChineseWord was successfully created.'
        format.html { redirect_to(@chinese_word) }
        format.xml  { render :xml => @chinese_word, :status => :created, :location => @chinese_word }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @chinese_word.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /chinese_words/1
  # PUT /chinese_words/1.xml
  def update
    @chinese_word = ChineseWord.find(params[:id])

    respond_to do |format|
      if @chinese_word.update_attributes(params[:chinese_word])
        flash[:notice] = 'ChineseWord was successfully updated.'
        format.html { redirect_to(@chinese_word) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @chinese_word.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /chinese_words/1
  # DELETE /chinese_words/1.xml
  def destroy
    @chinese_word = ChineseWord.find(params[:id])
    @chinese_word.destroy

    respond_to do |format|
      format.html { redirect_to(chinese_words_url) }
      format.xml  { head :ok }
    end
  end
end
