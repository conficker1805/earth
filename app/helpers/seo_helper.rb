module SeoHelper
	def initialize_meta_tag
		set_meta_tags :site 					=> 'earth',
									:title 					=> 'Homepage',
									:keywords 			=> %w[keyword1\ and\ Keyword2 Keyword3],					# Recommended keywords tag length: up to 255 characters, 20 words
									:description 		=> "All text about keywords, other keywords", 		# Recommended up to 160 characters
									:canonical 			=> "http://localhost.com:3000",										# Main URL for a content
									:alternate 			=> { "en" => "http://localhost.com:3000/en",			# Enable this attribute if your site has many language
																			 "vi" => "http://localhost.com:3000/vi" },
									:viewport				=> "width=device-width, initial-scale=1.0",
									# :noindex 			=> true,
									# :nofollow 		=> true,
									:og => {  																												# Share your link easier on Facebook
										:site_name 		=> "earth (Like :site attribute)",
										:title 				=> "article/purpose this page",
										:type 				=> "objec/photo/article/summary/etc.",
										:image 				=> "link thumbnail image for review",
										:url 					=> "current link",
										:description 	=> "Intro/short description",
									},

									:twitter => {  																			# Share your link easier on twitter
										:site  				=> "earth (Like :site attribute)",
										:title 				=> "article/purpose this page",
										:card  				=> "objec/photo/article/summary/etc.",
										:description  => "Intro/short description",
										:image => {
											:src    => "link thumbnail image for review",
											:width  => 300,
											:height => 300
										}
									}
		end
end
