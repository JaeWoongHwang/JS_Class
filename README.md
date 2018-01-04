## HTML, CSS를 이용한 Board Service 구현

### HTML / CSS / JavaScript
- HTML은 Application의 정의와 구조를 선언.
- CSS는 Application을 꾸며주는 역할.
- JavaScript는 Application을 동적으로 꾸며주는 역할.

### 1. Board Service 'onclick' 이벤트 설정
- click 이벤트 핸들러를 이용하여 버튼을 클릭하면 해당하는 액션이 실행되게 함.
- title 바꾸기 버튼을 누르고 새 title을 입력하면 title 전체가 변한다.
- html source를 public file로 따로 분리한다.

### 2. Board Service 'onmouseover' 이벤트 설정
- 색깔이 지정된 버튼에 마우스 커서를 올리면 그 색으로 글이 바뀌는 이벤트를 지정.
- html source를 public file로 따로 분리한다.

### 3. 반응형 웹 설정
- 어느 환경의 웹에서도 같은 코드가 적용될 수 있게 끔 함.

### 4. Board Service 수정
- 기존의 버튼들을 제거. 글을 누르면 각 글의 세부정보를 볼 수 있게끔 함.
- 글을 가운데 정렬 한다.

### 5. 댓글 기능 추가
- 게시물에 댓글 작성, 수정 기능을 추가 함.

### 6. Board의 게시물 출력
- 1000개의 게시물을 페이지별로 나누어서 출력 함.
- 페이지 끝에 도착했을 때 다음 페이지를 자동으로 출력.

### 7. 이메일 중복 검사
- 중복 이메일인지 
