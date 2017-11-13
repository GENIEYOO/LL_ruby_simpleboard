class PostController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @id = params[:id]
    @post = Post.find(@id) #아이디를 가진 친구를 검색을 해서 저장을 해둔다.
    @user = User.find(@post.user_id)
    
    @comments = @post.comments #Comment.all
    
  end

  def new
  end

  def create
    
    @title = params[:title]
    @content=params[:content]
    
    Post.create(
      title: @title,
      content: @content,
      user_id: session[:user_id]
      
      )
      redirect_to '/' #크리에이트가 성공적으로 되면 리데이렉트
  end
  
  
  def modify
  
      
      @id = params[:id]
      @post = Post.find(params[:id]) #누른 데이터도 받아와야 하므로 데이터 받는 것.
      
  end
  
  def update
    #1번 글에 대해서 나는 수정을 할거야
    #1번 글을 찾는다.
    @id = params[:id]
    @post = Post.find(@id)
    
    @post.update(
      title: params[:title],
      content: params[:content]
      
      )
      
      
      redirect_to "/post/show/#{@id}"
    #해당 글을 업데이트 한다.
  end

  
  def destroy
  
    #2번글을 찾는다.
    @id = params[:id]
    @post = Post.find(@id)
    
    @post.destroy
    
    redirect_to "/"
    
    
    
    
    #.destroy
  end


  def create_comment
    @comment = params[:comment]
      Comment.create(
     
       content: @comment,
       post_id: params[:post_id]
      
      )
    redirect_to :back
  end

end


