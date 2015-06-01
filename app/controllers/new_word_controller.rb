class NewWordController < ApplicationController

	def create_word_and_category
		@word = Word.new(word_params)
		@category = Category.new(category_params)

		if @word.save and @category.save

			@word.categories << @category unless @word.categories.include?(@category)
			@word.save

			redirect_to words_path, notice: 'Word was successfully created.'
		else
			redirect_to new_word_path
		end
	end

	private
    # Use callbacks to share common setup or constraints between actions.
    # def set_word
    #   @word = Word.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def word_params
      params.require(:word).permit(:title, :description, :user_id)
    end

    def category_params
    	params.require(:category).permit(:title)
    end

end