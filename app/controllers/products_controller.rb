class ProductsController < ApplicationController

before_filter :authorize


def products_list
@products = Products.find(:all)
end 
def list
@products = Products.find(:all)
end


def new
      @product = Products.new
     
   end

def sucess
redirect_to :action => 'list'
end

def shiva
end

def create

@product = Products.new(params[:product])
      if @product.save
            redirect_to :action => 'list'
      else
            
            render :action => 'shiva'
      end

end


def update
      @product = Products.find(params[:id])
      if @book.update_attributes(params[:product])
         redirect_to :action => 'show', :id => @product
      else
         
         render :action => 'edit'
      end
   end
end
