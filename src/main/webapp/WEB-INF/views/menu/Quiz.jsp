<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Quiz</title>

    <script language="javascript">
        var delay=10; //시간설정
        var correctAnswers=new Array("c","d","b","d","a");  //정답

        var q_num=1;
        var timer;
        var layer;
        var clock=delay;
        var score=0;

        function show_question(){
            if (layer=eval("document.all.question"+q_num)){
                layer.style.display="inline";
                document.all.timeLeft.innerHTML=clock;
                hide_question();
            } else {
                document.all.timeLeft.innerHTML=0;
                document.all.quizScore.innerHTML="당신은 "+(q_num-1)+"문제중 "+score+"개를 맞췄습니다.";
                document.all.quizScore.style.display="inline";
            }
        }

        function hide_question(){
            if (clock>0) {
                document.all.timeLeft.innerHTML=clock;
                clock--;
                timer=setTimeout("hide_question()",1000);
            } else {
                clearTimeout(timer);
                document.all.answerBoard.innerHTML=" ";
                clock=delay;
                layer.style.display="none";
                q_num++;
                show_question();
            }
        }

        function check_answer(answer){
            if (correctAnswers[q_num-1]==answer){
                score++;
                document.all.answerBoard.innerHTML="<font color=blue><b>정답입니다.</b></font>";
            } else {
                document.all.answerBoard.innerHTML="<font color=red><b>땡! 틀렸습니다.</b></font>";
            }
            clock=0;
            clearTimeout(timer);
            timer=setTimeout("hide_question()",700);
        }

        window.onload=show_question;
    </script>
</head>

<body>

제한시간 : <B><span id="timeLeft"></span></B> 초<br>
<br>
<div id="answerBoard"> </div>
<br>

<div id="question1" style="display:none">
    <b>1. 하늘에서 애 낳으면 ?</b><br>
    <a href="javascript:void(0)" onclick="check_answer('a')">a) 하이마트</a><br>
    <a href="javascript:void(0)" onclick="check_answer('b')">b) 하이웨이</a><br>
    <a href="javascript:void(0)" onclick="check_answer('c')">c) 하이애나</a><br>
    <a href="javascript:void(0)" onclick="check_answer('d')">d) 옴메 나죽어</a><br>
</div>

<div id="question2" style="display:none">
    <b>2. 세상 사람들의 머리카락 수를 모두 곱하면?</b><br>
    <a href="javascript:void(0)" onclick="check_answer('a')">a) 불계</a><br>
    <a href="javascript:void(0)" onclick="check_answer('b')">b) 계산 불가</a><br>
    <a href="javascript:void(0)" onclick="check_answer('c')">c) 무한대</a><br>
    <a href="javascript:void(0)" onclick="check_answer('d')">d) 0</a><br>
</div>

<div id="question3" style="display:none">
    <b>3. 이 문제의 답은 2개다. 사과나무가 3개있는데,
        <br>첫번째 나무에는 사과가1개, 두번째 나무에는 사과가 3개 있다.
        <br>그럼 세번째 나무의 사과 개수는?</b><br>
    <a href="javascript:void(0)" onclick="check_answer('a')">a) 1개</a><br>
    <a href="javascript:void(0)" onclick="check_answer('b')">b) 2개</a><br>
    <a href="javascript:void(0)" onclick="check_answer('c')">c) 3개</a><br>
    <a href="javascript:void(0)" onclick="check_answer('d')">d) 4개</a><br>
</div>

<div id="question4" style="display:none">
    <b>4. 알리의 주먹보다, 타이슨의 주먹보다 더 강한것은?</b><br>
    <a href="javascript:void(0)" onclick="check_answer('a')">a) 이소룡의 철권</a><br>
    <a href="javascript:void(0)" onclick="check_answer('b')">b) 타이슨의 핵이빨</a><br>
    <a href="javascript:void(0)" onclick="check_answer('c')">c) 토니쟈의 니킥</a><br>
    <a href="javascript:void(0)" onclick="check_answer('d')">d) 보</a><br>
</div>

<div id="question5" style="display:none">
    <b>5. 콩이 바쁘면?</b><br>
    <a href="javascript:void(0)" onclick="check_answer('a')">a) 콩비지</a><br>
    <a href="javascript:void(0)" onclick="check_answer('b')">b) 콩나물</a><br>
    <a href="javascript:void(0)" onclick="check_answer('c')">c) 킹콩</a><br>
    <a href="javascript:void(0)" onclick="check_answer('d')">d) 콩국수</a><br>
</div>

<div id="quizScore" style="display:none">
</div>

</body>
</html>

