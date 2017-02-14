<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>BMI</title>

    <SCRIPT LANGUAGE="JAVASCRIPT">
        var boy=1;
        var girl=2;
        var sexis=boy;

        function Man_Weight(h)
        {
            c=(h-100)*0.9
            return c;
        }
        function Woman_Weight(h)
        {
            c=(h-100)*0.85
            return c;
        }
        function calculate_Weight(w, c)
        {
            d=w/c*100
            return d;
        }
        function error(form)
        {
            if (form.w.value==null||form.w.value.length==0 || form.h.value==null||form.h.value.length==0)
            {
                alert("측정할 정보를 입력하지 않았습니다.");
                return false;
            }
            return true;
        }
        function ResultCal(form)
        {
            if (error(form))
            {
                if(sexis==boy)
                {
                    c=Math.round(Man_Weight(form.h.value));
                }
                else if(sexis==girl)
                {
                    c=Math.round(Woman_Weight(form.h.value));
                }
                form.c.value=c;
                fat=Math.round(calculate_Weight(form.w.value, c));
                if(fat>=120)
                {
                    form.doctor.value="비만이십니다. 시간나실때 마다 운동을 즐거운 맘으로 하세요";
                }
                else if(fat>=90 && fat<120)
                {
                    form.doctor.value="건강한 표준 체중이십니다. 건강은 건강할때 지켜야 합니다.";
                }
                else if(fat>0 && fat<90)
                {
                    form.doctor.value="표준체중에 미달입니다. 가벼운 운동과 함께 맛있는 음식많이 섭취하세요";
                }
            }
            return;
        }
        function re(form)
        {
            form.w.value = "";
            form.h.value = "";
            form.c.value = "";
            form.doctor.value = "";
        }
    </SCRIPT>
    <!--여기까지의 스크립트를 <head>와 </head>태그 사이에 넣으세요-->
</html>
<BODY>
<FORM NAME="test" method=POST>
    아래에 정보를 기입하세요.<br>
    신장<input type=TEXT name=h  size=5>cm
    몸무게<input type=TEXT name=w  size=5>kg
    <input type="BUTTON"  value="측정결과"  onClick="ResultCal(this.form)" name="BUTTON">
    <input type="BUTTON"  value="다시입력"  onClick="re(this.form)" name="BUTTON"><br>
    귀하의 이상적인 평균체중은
    <input type=TEXT name=c size=5>kg
    <br>
    *처방
    <br>
    <textarea name="doctor" cols=50 rows=5 wrap=on>