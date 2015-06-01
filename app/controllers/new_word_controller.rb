class NewWordController < ApplicationController

# Create form to:
# 1. Create new word, sending params containing everything for a new word a new category
# 2. Write controller method that:
# => Creates a new word,
# => Creates a new category,
# => Saves both to the database, then pushes the new category into the new word.categories,
# => ....unles word.categories.includes? category.
# => word.save!

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