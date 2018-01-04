// jQuery식 dom탐색
$(document).ready(function(){
  $('.boards').on('click', '.board', function()){
    location.href = '/boards/' +  $(this).data('id');
  )}
})
  //위 코드의 축약형 $(function(){})
  // var show = document.getElementsByClassName('board');
  // board클래스의 객체들을 모두 가져온다. + 바로 이벤트 리스너 핸들러를 더할 수 있다.

// tr에 해당하는 html element을 찾는다.

// html element에 click 이벤트 리스너를 달아준다.
//
// for(var i = 0; i <show.length; i++){
//   show[i].onclick = function(){
//   // 이벤트 핸들러에서는 해당 html element가 가지고 있는 속성을 꺼낸다.
//   var id = this.getAttribute('data-id');
//   // 해당 속성 값으로 url을 만들어서 이동한다.
//   location.href = '/boards/' + id;
//   }
// }
