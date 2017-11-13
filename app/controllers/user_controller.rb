class UserController < ApplicationController
  def index
    @users = User.all
  end

  def create
    require 'digest'
    @email = params[:email]
    @password = params[:password]
   
    User.create(
      email: @email,
      password: @password
      )
      
       redirect_to '/'
  end

  def new
  end

  def show
  end
  
  def login
  end
  
  
  def login_process
        
      @user = User.find_by(email: params[:email])
      if @user = #유저가 닐이아닌경우
        if @user.password == params[:password] #패스워드와 이메일이 같다면
            session[:user_id] = @user.id #session 정보가 있는 데 그 중에 아이디를 세션에 넣는다.
            flash[:notice] ="로그인이 되었습니다."
            redirect_to '/'
        end
        else
          flash[:notice] = "비밀번호가 틀렸습니다."
          redirect_to '/user/login'
       
      end
  end
  
  
  def logout
  
    session.clear
    flash[:notice] ="로그아웃이 되었습니다."
    redirect_to '/'
  end




end
    