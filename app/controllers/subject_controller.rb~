class SubjectController < ApplicationController

 def list
  @subjects = Subject.find(:all)
   end
   def show
 @subject = Subject.find(params[:id])
   end
   def create
 @subject = Subject.new(params[:subject])
      if @subject.save
         render :partial => 'subject', :object => @subject
      end
   end

end
