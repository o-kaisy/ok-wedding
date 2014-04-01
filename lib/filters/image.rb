class Image < Nanoc::Filter
	identifier :image
	type       :binary

	def run filename, params = {}
		system 'convert',
			'-resize', params[:geometry], filename, output_filename
	end
end
