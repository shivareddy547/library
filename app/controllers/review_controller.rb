class ReviewController < ApplicationController

def list
      @reviews = Review.find(:all)
   end
   
   def new
      @review = Review.new
    
   end
   def create
@book=Book.find(params[:book_id])
@review = Review.new(params[:review])
if @review.save!
redirect_to :action => "list"
else

render :action => "new"
end
end

   def edit
      @review = Review.find(params[:id])

   end
   def update
      @review =Review.find(params[:id])
      if @review.update_attributes(params[:review])
         redirect_to :action => 'show', :id => @review
      else
       
         render :action => 'edit'
      end
   end
   def delete
      Review.find(params[:id]).destroy
      redirect_to :action => 'list'
   end
   

end
