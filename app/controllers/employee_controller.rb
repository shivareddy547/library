class EmployeeController < ApplicationController
  def list
      @employees = Employee.find(:all)
@employees = Employee.paginate(:per_page => 5, :page => params[:page])
   end
   def show
      @employee = Employee.find(params[:id])
   end
   def new
      @employee = Employee.new
      @subjects = Subject.find(:all)
   end
   def create
@employee = Employee.new(params[:employee])
if @employee.save!
redirect_to :action => "list"
else
@subjects = Subject.find(:all)
render :action => "new"
end
end

   def edit
      @employee = Employee.find(params[:id])
      @subjects = Subject.find(:all)
   end
   def update
      @employee = Employee.find(params[:id])
      if @employee.update_attributes(params[:employee])
         redirect_to :action => 'show', :id => @employee
      else
        @subjects = Subject.find(:all)
         render :action => 'edit'
      end
   end
   def delete
      Employee.find(params[:id]).destroy
      redirect_to :action => 'list'
   end
   
end
