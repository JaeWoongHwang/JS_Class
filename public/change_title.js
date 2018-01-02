// alert("여기는 인덱스 페이지 입니다.");
// 1. 이벤트를 넣어준 html element를 찾는다.
var btn = document.getElementById('change_title');
// 2. 해당 element에 원하는 이벤트를 달아준다.
btn.onclick = function(){
//실행문
// 3. 이벤트가 발생했을 경우 실행하는 함수를 만들어 준다.
// 버튼을 누르면 prompt 창이 떠서 입력메시지를 입력할 수 있고
  var title = prompt('바꿀 제목을 입력하세요.');
// 바꿀 내용물(html element)이 어디에 있는지 찾는다.
  var titles = document.getElementsByClassName('title');
  for(var i = 0; i<titles.length; i++){
// 해당 내용으로 모든 제목을 바꿔 버린다.
    titles[i].textContent = title;
  }
}
