/*
  일반 함수 정의방식 과 익명 함수 선언 참조 방식의 차이점
  일반 함수 정의는  함수 호출 시 호이스팅(hostiong) 기술을 지원 합니다.
  그러나 익명 함수 선언 참조 방식은 호이스팅을 지원하지 않습니다.
*/
{
  let count = 0;//var를 사용하지 않는다. -습관
  myFnc();

  function myFnc(){
    count++;
    document.write("hello" + count,"<br>");
  }
  myFnc();
}