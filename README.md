##simple board


##User, Post

###User model
stirng title
string content

###Post model

string email
string password


###post controller
####actions

post#index => 모든 게시글을 보여준다.
     #new  => 새로운 게시글을 만드는 form을 보여준다.
      #create => new에서 작성한 글을 쓴다. == DB에 저장한다.
     #show => /post/show/:id 해당하는 글 1개만 보여준다.
post#modify => 게시글을 수정할 수 있는 form을 보여준다.
post#update => modify에서 수정된 글을 DB에  새로 저장한다. (
update한다.)
post#destroy => show에서 확인한 글을 지울 수 있게 한다.


'user controller'
user#index => 모든유저를 보여준다.
       #new => 새로운 유저를 만드는 form을 보여준다. (회원가입)
user#create => new에서 작성한 정보를 DB에 저장
user#show > /user/show/:id에 해당하는 유저 한명만 보여준다.
user#login ==> form에 로그인이 가능한 페이지를 보여준다.
user#login_process => 로그인 정보와 DB유저 정보를 비교해 유저를 로그인 시킨다.



