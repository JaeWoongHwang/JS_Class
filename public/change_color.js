//세 개의 버튼 html element를 찾는다.
var btns = document.querySelectorAll('.color-btn');
// 각 버튼에 해당하는 색상을 정한다.
// 버튼에 마우스를 올렸을 때 이벤트가 발생한다.
for(var i=0; i<btns.length; i++){
   btns[i].onmouseover = function(){
    var color = this.getAttribute('change_color');
    var table  = document.getElementsByTagName('table')[0];
    // 각 버튼에 정해진 색상 class를 table에 넣어준다.
    table.setAttribute('class', "table table-hober " + color);
  }
}
