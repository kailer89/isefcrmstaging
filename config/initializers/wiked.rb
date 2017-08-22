if not Rails.env.production? 
	PDFKit.configure do |config|
	  config.wkhtmltopdf = "C:/Program Files (x86)/wkhtmltopdf/wkhtmltopdf.exe"
	  config.default_options = {
	 :page_size => 'Legal',
	 :print_media_type => true
	 }
	end
end