module ApplicationHelper
	include TweetButton
	# Return a title on a per-page basis.
	def title
		base_title = "RailsTest"
		if @title.nil?
		base_title
		else
			"#{base_title} | #{@title}"
		end
	end

	def logo
		image_tag("logo.png", :alt => "RailsTest", :class => "round")
	end

	def facebook_like
		src = "http://www.facebook.com/plugins/like.php?href=#{CGI::escape(request.url)}&layout=standard&show_faces=true&width=450&action=like&font=arial&colorscheme=light&height=80"
		content_tag :iframe, nil, :src => src, :scrolling => 'no', :frameborder => '0',
						:allowtransparency => true, :id => :facebook_like
	end

	TweetButton.default_tweet_button_options = {:via => "myself", :count => "horizontal"}
end
