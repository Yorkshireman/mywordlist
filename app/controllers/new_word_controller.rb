class NewWordController < ApplicationController

	def create_word_and_category
		@word = current_user.word_list.words.build(word_params)
		@word_list = current_user.word_list

		if @word.save
			if params["category"].include?(:category_ids)
				(params["category"])["category_ids"].each do |i|
					next if i.to_i == 0
					@word.categories << Category.find(i.to_i) unless @word.categories.include?(Category.find(i.to_i))
				end
			end

			if category_params.include?(:title) && ((params["category"])["title"]) != ""
				@word.categories << current_user.word_list.categories.build(title: (params["category"])["title"])
			end
		end

		if @word.save
			redirect_to @word_list, notice: 'Word was successfully created.'
		else
			redirect_to new_word_path, notice: 'A valid word was not submitted.'
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
    	params.require(:category).permit(:title, :category_ids, :category_id)
    end

end