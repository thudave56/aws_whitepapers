class ApplicationController < ActionController::Base
  http_basic_authenticate_with :name => "stevenzeiler", :password => "goosebumpgeorge"
  protect_from_forgery

  def index
  end

  def whitepapers
  	id = 1
  	@whitepapers = []

  	Dir.foreach("#{Rails.root}/public/aws_white_papers"){|f| 
  		@whitepapers.push({ title: f, id: id}) unless f.match(/^\./)
  		id = id + 1
  	}
  	
  	render json: @whitepapers
  end  
end
