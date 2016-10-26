class CommentsController < ApplicationController
    def index
    end
    
    def show
    end
    
    def new
    end
    
    def create
        @comment = Comment.new(comment_params)
        if @comment.save
          redirect_to customer_path(@comment.customer_id)
         else
          #@customerにcustomer_idに紐づく@commentをfindで探して代入
          @customer = Customer.find(@comment.customer_id)
          #@commentsに@customerに紐づくcommentsを代入
          @comments = @customer.comments
          render template: 'customers/show'
        end
    end
    
    def edit
    end
    
    def update
    end
    
    def destroy
        @comment = Comment.find(params[:id])
        # @commentがdestroyされる前に、commentが誰のものかを変数に保存する
        customer_id = @comment.customer_id
        @comment.destroy
        # さっき保存したcustomer_idを使う
        redirect_to customer_path(customer_id)
    end
    
    def comment_params
        params.require(:comment).permit(:body, :customer_id)
    end
end