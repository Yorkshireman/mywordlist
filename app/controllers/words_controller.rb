class WordsController < ApplicationController
  before_action :set_word, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /words
  # GET /words.json
  def index
    @words = Word.all
  end

  # GET /words/1
  # GET /words/1.json
  def show
  end

  # GET /words/new
  def new
    @word = current_user.word_list.words.build
  end

  # GET /words/1/edit
  def edit
  end

  # POST /words
  # POST /words.json
  def create
    @word = Word.new(word_params)

    respond_to do |format|
      if @word.save
        format.html { redirect_to @word, notice: 'Word was successfully created.' }
        format.json { render :show, status: :created, location: @word }
      else
        format.html { render :new }
        format.json { render json: @word.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /words/1
  # PATCH/PUT /words/1.json
  def update
    #need to first remove categories from the word
    @word.categories.each do |category|
      @word.categories.delete category
    end

    #then push categories in from the category_params
    if params["category"].include?(:category_ids)
      (params["category"])["category_ids"].each do |i|
        next if i.to_i == 0
        @word.categories << Category.find(i.to_i) unless @word.categories.include?(Category.find(i.to_i))
      end
    end

    if category_params.include?(:title) && ((params["category"])["title"]) != ""
      @word.categories << current_user.word_list.categories.build(title: (params["category"])["title"])
    end

    respond_to do |format|
      if @word.update(word_params)
        format.html { redirect_to words_path, notice: 'Word was successfully updated.' }
        format.json { render :show, status: :ok, location: @word }
      else
        format.html { render :edit }
        format.json { render json: @word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /words/1
  # DELETE /words/1.json
  def destroy
    @word.destroy
    respond_to do |format|
      format.html { redirect_to words_url, notice: 'Word was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_word
      @word = Word.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def word_params
      params.require(:word).permit(:title, :description, :category_ids)
    end

    def category_params
      params.require(:category).permit(:title, :category_ids, :category_id)
    end
end