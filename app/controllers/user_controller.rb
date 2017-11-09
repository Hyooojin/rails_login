# rails g(nerate) controller user
#1. routes
#2. controller
#3. view

# rails g model user
# t.string :email
# t.string :password

#회원가입
# 0. (root)user/index => 모든 유저 정보를 나열해준다. 
    # -회원가입 링크, 각각의 회원 정보 옆에는 수정&삭제 링크
# 1. user/new => 회원가입페이지 form
# 2. user/create => 회원가입완료
# 3. user/modify/:id => 자신의 정보를 수정하는 페이지
# 4. user/update => 수정완료
# 5. user/destroy/:id => 유저정보삭제


class UserController < ApplicationController
    
    def index
        if session[:user_id] #sesson에 1을 가진 사람이 있다면 ! 
            @email = User.find(session[:user_id]).email
        end
    end
    
    def new
        
    end
    
    
    def create
        require 'digest'
        @email = params[:user_email]
        @password = params[:user_password]
        hidden_password =Digest::MD5.hexdigest(@password) 
        User.create(
            email: @email,
            password: hidden_password
            )
        #user를 계속해서 추가해 줄 수 있는 코드 추가    
        
        
    end
    
    def login
        
    end
    
   
   
    def login_process
        require 'digest'
        
        if User.exists?(email: params[:user_email])
            user = User.find_by(email: params[:user_email])
            if user.password == Digest::MD5.hexdigest(params[:user_password])
                session[:user_id] = user.id # 저장해두고 쓴다.
                p "로그인이 되었습니다."
                redirect_to '/'

            end
        end
    end
    
    
    
end
