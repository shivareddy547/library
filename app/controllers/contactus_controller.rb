class ContactusController < ApplicationController
  def index

  end

  def thanks
  end

def create
@contactus = Contactus.new(params[:contactus])
if @contactus.save!
redirect_to :action => "thanks"
else

render :action => "index"
end
end

def list
@contactuses=Contactus.find(:all)

end


def show
@contactus = Contactus.find(params[:id])
end

end
