class WordsController < ApplicationController
  # GET /words
  # GET /words.xml
  def index
    @words = Word.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @words }
    end
  end

  # GET /words/1
  # GET /words/1.xml
  def show
    @word = Word.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @word }
    end
  end

  # GET /words/new
  # GET /words/new.xml
  def new
    @word = Word.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @word }
    end
  end

  # GET /words/new_en_ch
  # GET /words/new_en_ch.xml
  def new_en_ch
    @ch_word = Word.new
    @en_word = Word.new
    @translation = Translation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @word }
    end
  end

  # GET /words/1/edit
  def edit
    @word = Word.find(params[:id])
  end

  # POST /words
  # POST /words.xml
  def create
    @word = Word.new(params[:word])

    respond_to do |format|
      if @word.save
        flash[:notice] = 'Word was successfully created.'
        format.html { redirect_to(@word) }
        format.xml  { render :xml => @word, :status => :created, :location => @word }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @word.errors, :status => :unprocessable_entity }
      end
    end
  end

  # POST /words_en_ch
  # POST /words_en_ch.xml
  def create_en_ch
    @ch_word = Word.new(params[:ch_word])
    @ch_word.language = "ch"
    @ch_word.romanization = @ch_word.secondary_script
    @en_word = Word.new(params[:en_word])
    @en_word.language = "en"
    @translation = Translation.new
    @translation.word_a = @ch_word
    @translation.word_b = @en_word

    respond_to do |format|
      if @ch_word.save and @en_word.save and @translation.save
        flash[:notice] = 'Word was successfully created.'
        format.html { redirect_to(@ch_word) }
        format.xml  { render :xml => @ch_word, :status => :created, :location => @ch_word }
      else
        format.html { render :action => "new_en_ch" }
        format.xml  { render :xml => @word.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /words/1
  # PUT /words/1.xml
  def update
    @word = Word.find(params[:id])

    respond_to do |format|
      if @word.update_attributes(params[:word])
        flash[:notice] = 'Word was successfully updated.'
        format.html { redirect_to(@word) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ch_word.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /words/1
  # DELETE /words/1.xml
  def destroy
    @word = Word.find(params[:id])
    @word.destroy

    respond_to do |format|
      format.html { redirect_to(words_url) }
      format.xml  { head :ok }
    end
  end
end
