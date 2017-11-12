# Ruby on Rails

### Rails
레일즈는 루비 언어로 작성된 웹 어플리케이션 프레임워크이다.  <br/>
레일즈는 모든 개발자가 개발을 시작 할 때 필요한 초기 준비나 가정들을 쉽게 만들 수 있는 도구를 제공하여, 웹 어플리케이션 프로그래밍을 더 쉽게 만들 수 있도록 설계되어 있다. <br/>
[레일즈 시작하기 참고사이트](https://rubykr.github.io/rails_guides/getting_started.html)
<br/><br/>

### MVC 아키텍쳐
레일즈의 중심에는 MVC 라고 불리는 모델, 뷰, 컨트롤러 아키텍처가 있다.
* Models
  : 어플리케이션의 데이터를 다루는 규칙을 의미
  * Modle은 데이터 베이스 테이블과 상호 작용하는 규칙을 관리
  * 데이터 베이스의 하나의 테이블은 어플리케이션의 하나의 모델과 대응


* Views
  : 어플리케이션 유저 인터페이스를 의미
  * View는 주로 데이터 표현에 관련된 **루비 코드가 삽입되어 있는 HTML** 파일이다.
  * 데이터를 웹 브라우저나 다른 기기에서 데이터를 제공하는 일을 담당


* Controllers
  : 모델과 뷰를 **연결**하는 역할
  * Controller는 웹브라우저의 요청을 받아서, 모델을 통해서 데이터를 조회하여, 출력을 위해 뷰에게 데이터를 넘겨준다.
    <br/><br/>

### LOGIN Form 만들기
* 환경설치
  * 컨트롤러 설치
    * $ rails g controller user<br/>
    * config에 생성된 routes.rb를 확인
      이곳에서 **라우팅**을 한다. 
      <br/>
    * views의 입력한 user 확인
       입력한 이름(이곳에서는 user)으로, 폴더가 생성된 것을 볼 수 있고, 이곳에 view파일들을 작성 
  * 모델 설치
    * rails g moder user<br/>
    * db의 migrate에 생겨난 create_users.rb에 칼럼 정의<br/>
      t.[데이터타입] :컬럼명<br/>
      예시) t.string :email<br/>
      저장 후, 다음 명령문을 실행<br/> 
    * $ rake db:migrate<br/>
    * db에 schema.rb를 확인 
      새로운 컬럼을 추가한 Schema가 생성된 것을 확인 할 숭 있다. 
      <br/><br/>
* 라우트 설정
  * 기본적으로 순서는 이러하다. <br/> 
    : routes.rb에서 라우팅을 한 후, user_controller.rb에서 method를 정의한다. 그 후, view파일을 만들면 web이 동작하게 된다. 
* method 정의
	

* view 파일 만들기